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

    [SerializeField] private VerticalLayoutGroup _choiceButtonContainer;

    [SerializeField] private Button _choiceButtonPrefab;




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
        if(_story.canContinue)
        {
        string text = _story.Continue(); //gets next line
        text = text?.Trim(); //removes white space from text
        _textField.text = text; //displays new text

        }
        else if (_story.currentChoices.Count > 0)
        {
            DisplayChoices();
        }


    }



    //Create and display choices. Access choices using _story.currentChoices
    //NOTE: BUTTON type might need to be changed.
    private void DisplayChoices()
    {
        //checks if choices are already displayed
        if (_choiceButtonContainer.GetComponentsInChildren<Button>().Length > 0) return;

        for (int i = 0; i < _story.currentChoices.Count; i++) //iterates through all choices
        {
            var choice = _story.currentChoices[i];
            var button = CreateChoiceButton(choice.text); //creates choice button

            button.onClick.AddListener(() => OnClickChoiceButton(choice));
        }
    }


    Button CreateChoiceButton(string text)
    {
        //creates the button from prefab, inserts it into container
        var choiceButton = Instantiate(_choiceButtonPrefab);
        choiceButton.transform.SetParent(_choiceButtonContainer.transform, false);

        //sets text on the button
        var buttonText = choiceButton.GetComponentInChildren<UnityEngine.UI.Text>();
        buttonText.text = text;

        return choiceButton;
    }


void OnClickChoiceButton(Ink.Runtime.Choice choice)
{
    _story.ChooseChoiceIndex(choice.index); //tells ink which choice was selected
    RefreshChoiceView(); //removes choices from screen
    DisplayNextLine();

}

void RefreshChoiceView()
{
    if (_choiceButtonContainer !=null)
    {
        foreach (var button in _choiceButtonContainer.GetComponentsInChildren<UnityEngine.UI.Button>())
        {
            Destroy(button.gameObject);
        }
    }
}





    // Update is called once per frame
    void Update()
    {
        
    }





}
