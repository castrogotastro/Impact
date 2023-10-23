using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeBackGround : MonoBehaviour
{

    public GameObject car1;
    public GameObject car2;



    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void BackGroundChanger()
    {
        car1.SetActive(false);
        car2.SetActive(true);
    }
}
