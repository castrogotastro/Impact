using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NextButtonScript : MonoBehaviour
{
    public InkManager _inkManager;


    // Start is called before the first frame update
    void Start()
    {
        _inkManager = FindObjectOfType<InkManager>();

        if (_inkManager == null)
        {
            Debug.LogError("Ink Manager not found");
        }
    }

    public void onClick()
    {
        _inkManager?.DisplayNextLine();
    }
}
