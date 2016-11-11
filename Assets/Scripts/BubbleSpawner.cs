using UnityEngine;
using System.Collections;

public class BubbleSpawner : MonoBehaviour {

    public CameraDetection Detector;
    public GameObject SmallBubble;

    private float TotalTime=0, NextBubbleTime=0;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        if (Detector.IsPouring)
        {
            TotalTime += Time.deltaTime;

            if (TotalTime>= NextBubbleTime)
            {
                NextBubbleTime = Random.Range(0.1f, 0.8f);
                TotalTime = 0;
                SpawnBubble();
            }
        }
	}

    void SpawnBubble()
    {
        Vector3 point = new Vector3(Random.Range(-0.1f, 0.1f), 0, Random.Range(-0.1f, 0.1f))+transform.position;
        float speed = Random.Range(0.3f, 1f);
        float scale = Random.Range(0.01f, 0.025f);
        GameObject bubble = (GameObject)Instantiate(SmallBubble, point, transform.rotation);
        bubble.GetComponent<SmallBubble>().SetStart(scale, speed);
    }
}
