using UnityEngine;
using UnityEngine.UI;
using System;
using System.IO;
using System.Text;
using System.Collections;

public enum GameState
{
    CalibrateLight,
    CalibrateDark,
    FinalSetup,
    Playing
}

public class CameraDetection : MonoBehaviour {

    public int Width, Heigth;
    public Text GrayText,SetupText;
    public Renderer ColorViewer,CameraViewer;
    public GameObject Bubble;
    public float LightValue, DarkValue,DarkTreshhold,DarkTreshholdRatio = 0.3f;
    public bool IsPouring = false;

    private GameState GState = GameState.CalibrateLight;
    private WebCamTexture WTex;
    private Texture2D Tex;
    private int logNr = 0;
    private float TotalGray;
    

	// Use this for initialization
	void Start () {

        WTex = new WebCamTexture(WebCamTexture.devices[0].name);
        Tex = new Texture2D(Width,Heigth);
        Tex.filterMode = FilterMode.Point;
        ColorViewer.GetComponent<Renderer>().material.mainTexture = Tex;
        CameraViewer.GetComponent<Renderer>().material.mainTexture = WTex;
        WTex.Play();
                
    }
	
	// Update is called once per frame
	void Update ()
    {
        CalculateGray();

        switch (GState)
        {
            case GameState.CalibrateLight:
                SetupText.text = "Welcome to setup! Please keep lens uncovered. Press space for light value";
                if(Input.GetKeyDown(KeyCode.Space))
                {
                    LightValue = TotalGray;
                    GState = GameState.CalibrateDark;
                }
                break;
            case GameState.CalibrateDark:
                SetupText.text = "Very good! LightValue is "+LightValue+". Now cover the lens completely and press space for dark value";
                if (Input.GetKeyDown(KeyCode.Space))
                {
                    DarkValue = TotalGray;
                    GState = GameState.FinalSetup;
                }
                if (Input.GetKeyDown(KeyCode.R))
                {
                    GState = GameState.CalibrateLight;
                }
                break;
            case GameState.FinalSetup:
                SetupText.text = "All right! Darkvalue is " + DarkValue + ". press space to start or R to restart setup";
                if (Input.GetKeyDown(KeyCode.Space))
                {
                    GState = GameState.Playing;
                    ColorViewer.enabled = false;
                    CameraViewer.enabled = false;
                    GrayText.enabled = false;
                    SetupText.enabled = false;
                    GenerateLimits();
                    Bubble.SetActive(true);
                }
                if(Input.GetKeyDown(KeyCode.R))
                {
                    GState = GameState.CalibrateLight;
                }
                break;
            case GameState.Playing:
                if (TotalGray<DarkTreshhold)
                {
                    IsPouring = true;
                }
                else
                {
                    IsPouring = false;
                }
                break;
            default:
                break;
        }

        

        if (Input.GetKeyDown(KeyCode.L)) WriteLog();
	}

    void CalculateGray()
    {
        TotalGray = 0;
        Tex.SetPixels(WTex.GetPixels());
        for (int y = 0; y < Tex.height; y++)
        {
            for (int x = 0; x < Tex.width; x++)
            {
                Color c = Tex.GetPixel(x, y);
                float gray = (c.r + c.g + c.b) / 3;
                Tex.SetPixel(x, y, new Color(gray, gray, gray));
                TotalGray += gray;
            }
        }
        Tex.Apply();
        TotalGray = TotalGray / (Tex.width * Tex.height);
        GrayText.text = TotalGray.ToString();
    }

    void GenerateLimits()
    {
        DarkTreshhold = ((LightValue - DarkValue)*DarkTreshholdRatio)+DarkValue;
    }

    void WriteLog()
    {
        string path = @"C:\Users\jasper\Desktop\HoldOnLogs\Log"+logNr+".txt";
        string[] lines = new string[(WTex.width*WTex.height)+1];

        int index=0;

        if (!File.Exists(path))
        {
            for (int y = 0; y < Tex.height; y++)
            {
                for (int x = 0; x < Tex.width; x++)
                {
                    string line = "x:" + x + " y:" + y + " color:" + Tex.GetPixel(x, y).r.ToString();
                    lines[index] = line;
                    index++;
                }
            }
            string total = "TOTAL: " + TotalGray;
            lines[index] = total;
            File.WriteAllLines(path, lines);
            logNr++;
        }
        
    }
}
