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

    public GameObject dialoguePanelCanvas;


//Constants for tag keys
    private const string IMAGE_TAG = "image";
    private const string SOUND_TAG = "sound";

    private const string TRANSITION_TAG = "transition";

//Animation
[SerializeField] private Animator imageAnimator;

//Audio
[SerializeField] private AudioSource audioClip;






    // Start is called before the first frame update
    public void Start()
    {
        //dialoguePanelCanvas.SetActive(false);
        StartStory();//Calls StartStory method when game begins

        
    }

    public void StartStory()
    {
        _story = new Ink.Runtime.Story(_inkJsonAsset.text);
        DisplayNextLine();

        


    }
    


    /*private void ExitDialogueMode()
    {
        dialoguePanelCanvas.SetActive(false);
    }*/

    public void TrackHashToChangeImage(List<string> currentTags)
    {
      //Loop through each tag and handle it accordingly
      foreach (string tag in currentTags)
      {
        //parse tag into key and values (keys are: image, sound, translate). All those before colon in Ink file
        //returns array of length 2. 1st part is key, 2nd part is value
        string[] splitTag = tag.Split(':');
        //check if array length is greater than 2 and log error
        if (splitTag.Length !=2)
        {
            Debug.LogError("Tag longer than 2 and couldn't be parsed" + tag);
        }
        //tag key at index 0 in array. Set varialbe tagKey to index of 0
        //tag value at index 1
        string tagKey = splitTag[0].Trim();
        string tagValue = splitTag[1].Trim();

        //handle the tag. Swith statement routes tagKey variable (all tag keys)
        switch (tagKey)
        {
            case IMAGE_TAG:
                imageAnimator.Play(tagValue);
                //Debug.Log("image=" + tagValue);
                break;
            case SOUND_TAG:
                FindObjectOfType<AudioManager>().Play(tagValue);
                Debug.Log("sound=" + tagValue);
                break;
            case TRANSITION_TAG:
                Debug.Log("transition=" + tagValue);
                break;
            default:
                Debug.LogWarning("tag came in but is not currently being handled" + tag);
                break;
            
        }

      }
    }

    //Displays lines of story

    public void DisplayNextLine()
    {
        
        
        if(_story.canContinue)
        {
        string text = _story.Continue(); //gets next line
        text = text?.Trim(); //removes white space from text
        _textField.text = text; //displays new text
        TrackHashToChangeImage(_story.currentTags);

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
