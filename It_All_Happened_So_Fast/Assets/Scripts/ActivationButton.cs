using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ActivationButton : MonoBehaviour
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
        _inkManager?.dialoguePanelCanvas.SetActive(true);
        _inkManager?.StartStory();
        Debug.LogError("clicked");
    }
}

