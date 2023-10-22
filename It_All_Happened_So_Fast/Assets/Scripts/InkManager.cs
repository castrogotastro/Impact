using System.Collections;
using System.Collections.Generic;
using Ink.Parsed;
using Ink.Runtime;
using UnityEngine;
using UnityEngine.UI;

public class InkManager : MonoBehaviour
{
    [SerializeField] 
    private TextAsset _inkJsonAsset;
    private Ink.Runtime.Story _story;

    [SerializeField] private UnityEngine.UI.Text _textField;




    // Start is called before the first frame update
    void Start()
    {
        StartStory();//Calls StartStory method when game begins
    }

    private void StartStory()
    {
        _story = new Ink.Runtime.Story(_inkJsonAsset.text);
        DisplayNextLine();
    }

    //Displays lines of story

    public void DisplayNextLine()
    {
        if(!_story.canContinue) return;

        string text = _story.Continue(); //gets next line
        text = text?.Trim(); //removes white space from text
        _textField.text = text; //displays new text
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
