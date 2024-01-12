using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class NextButtonScriptTMP : MonoBehaviour
{

    public InkManagerTMP _inkManagerTMP;




    // Start is called before the first frame update
    void Start()
    {
        _inkManagerTMP =FindObjectOfType<InkManagerTMP>();

        if ( _inkManagerTMP == null)
        {
            Debug.LogError("Ink manager not found");
        }
        
    }

  public void onClick()
    {
        _inkManagerTMP?.ContinueButtonPressed();//calls calls method "ContinueButtonPressed" within InkManagerTMP, which calls EnterDialogueMode Method, which then calls DisplayNextline, which in turn displays the next line of dialogue within the ink script.
        Debug.Log("continue button pressed");
        //_inkManagerTMP?.EnterDialogueMode();
        //_inkManagerTMP?.DisplayNextLine();//calls method "DisplayNextLine" within InkManagerTMP, which calls EnterDialogueMode Method and displays the next line of dialogue within the ink script.

    }
}
