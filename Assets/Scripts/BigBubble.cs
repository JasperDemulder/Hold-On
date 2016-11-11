using UnityEngine;
using System.Collections;

public class BigBubble : MonoBehaviour {

    private const float StartScale = 0.050f;
    private float targetScale = StartScale;

    private float Timer = 0;

	// Use this for initialization
	void Start ()
    {
        transform.localScale = new Vector3(StartScale, StartScale, StartScale);
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (enabled)
        {
            Timer += Time.deltaTime;
            if (Timer>=5)
            {
                targetScale -= 0.003f;
            }
            if (targetScale < 0.05f) targetScale = 0.05f;

            if(Mathf.Abs(targetScale-transform.localScale.x)<0.001f)
            {
                transform.localScale = new Vector3(targetScale, targetScale, targetScale);
            }
            else if (targetScale>transform.localScale.x)
            {
                transform.localScale += new Vector3(0.01f * Time.deltaTime, 0.01f * Time.deltaTime, 0.01f * Time.deltaTime);
            }
            else if (targetScale<transform.localScale.x)
            {
                transform.localScale -= new Vector3(0.01f * Time.deltaTime, 0.01f * Time.deltaTime, 0.01f * Time.deltaTime);
            }
        }
	}

    void OnTriggerEnter(Collider other)
    {
        
        if (other.tag == "Bubble")
        {
            other.GetComponent<SmallBubble>().HasArrived = true;
            if (targetScale < transform.localScale.x) targetScale = transform.localScale.x;
            Timer = 0;
            targetScale += 0.006f;
        }
    }
}
