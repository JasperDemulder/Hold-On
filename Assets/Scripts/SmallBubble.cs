using UnityEngine;
using System.Collections;

public class SmallBubble : MonoBehaviour {

    public bool HasArrived = false;

    private Vector3 Velocity = Vector3.down;
    private float Speed;

	// Use this for initialization
	void Start ()
    {
	
	}

    public void SetStart(float scale,float speed)
    {
        transform.localScale = new Vector3(scale, scale,scale);
        Speed = speed;
    }
	
	// Update is called once per frame
	void Update ()
    {
        transform.Translate(Velocity * Speed * Time.deltaTime);
        if(HasArrived)
        {
            if (transform.localScale.x <= 0) Destroy(gameObject);
            transform.localScale = transform.localScale - new Vector3(0.1f*Time.deltaTime, 0.1f * Time.deltaTime, 0.1f * Time.deltaTime);
            if (Speed > 0) Speed -= 0.1f * Time.deltaTime;
        }
	}
}
