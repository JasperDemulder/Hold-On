using UnityEngine;
using System.Collections;

public class BigBubble : MonoBehaviour {

    private const float StartScale = 0.050f;
    private float targetScale = StartScale;

	// Use this for initialization
	void Start ()
    {
        transform.localScale = new Vector3(StartScale, StartScale, StartScale);
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (targetScale>transform.localScale.x)
        {
            transform.localScale += new Vector3(0.01f*Time.deltaTime, 0.01f * Time.deltaTime, 0.01f * Time.deltaTime);
        }
	}

    void OnTriggerEnter(Collider other)
    {
        Debug.Log("hit");
        if (other.tag == "Bubble")
        {
            other.GetComponent<SmallBubble>().HasArrived = true;
            targetScale += 0.003f;
        }
    }
}
