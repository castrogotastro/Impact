using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Ink.Runtime;
using UnityEngine.UI;
using System;
using JetBrains.Annotations;

public class InkManagerTMP : MonoBehaviour
{
    [Header("Story")]
        public TextAsset _inkJsonAssetTMP;
        private Story _story; //tracks location in ink file and determienes text to display. In youtube tutorial, this viable is "currentStory." Story is of type Ink.Runtime so add using Ink.Runtime to top and select this type and not type Ink.Story

        private bool _dialogueIsPlaying; //tracks if dialogue is currently playing and is used to toggle visibility
        private static InkManagerTMP instance; //creates static instance of InkManagerTMP




    [Header("Dialogue UI")]
        [SerializeField] private GameObject _dialoguePanel;//gives access to dialogue panel so it visibility can be toggled when dialogue is playing
        [SerializeField] private TextMeshProUGUI _dialogueText; //gives access to text within panel so it can be set to the curreny place in the ink file
        [SerializeField] private TMP_Text _textField; //NOTE: variable _textField and _dialogueText are the same. Unsure if using TMP_Text or TextMeshProUGUI is correct. These varialbes are functionally the same but the type is different. Use different types for testing to determine which is correct.
        [SerializeField] private VerticalLayoutGroup _choiceButtonContainer;
        [SerializeField] private Button _choiceButtonPrefab;
        [SerializeField] private GameObject _continueButton;


    //Constants for tag keys
    private const string IMAGE_TAG = "image";
    private const string SOUND_TAG = "sound";

    private const string TRANSITION_TAG = "transition";

    //Animation
    [SerializeField] private Animator imageAnimator; //images
    

    //Audio
    [SerializeField] private AudioSource audioClip;



    //Check if more than one dialogue system is running
    private void Awake()
        {
            if (instance != null)//checks if there is more than one singlton class and gives warning if there is
            {
                Debug.LogWarning("found more than one singltone class. There are 2 InkManagerTMP's in the scene");
            }
            instance = this;  //initializes this instance (InkmanagerTMP)
        }

        public static InkManagerTMP GetInstance()//returns instance
        {
        return instance;
    }



    //START - calls Function "StartStory"
        private void Start()
        {
        StartStory();
        


    }



    //StartStory - checks if story is playing and if dialogue panel is active, then intializes JSON file assiging it to variable "_story"
    private void StartStory()
    {
        _dialogueIsPlaying = true; //initalizes varialbe "_dialogueIsPlaying" to false
        _dialoguePanel.SetActive(true);//sets "dialoguePanel" to be inactive
        _story = new Story(_inkJsonAssetTMP.text); //set variable _story to a "new" Story (Story is part of Ink code) that is initalized to be InkJSON file.  _story is "current story" in youtube tutorial
        //NOTE: _story = new Story(_inkJsonAssetTMP.text); should either be in this method or in EnterDialogueMode. It likey shouldn't be in both.
        Debug.Log("Start Method called");
        TrackHashToChangeImageAndGetGlobalTags(_story.globalTags);

    }

    private void TrackHashToChangeImageAndGetGlobalTags(List<string> globalTags)
    {
        //Loop through each tag in current dialogue line
        foreach (string tag in globalTags)
        {
            //parse tag into key and value pair (keys are: image, sound, translate). Key before colon (":") in Ink file. 
            //returns array of length 2. 1st part is key, 2nd part is value
            string[] splitTag = tag.Split(':');
            //check if array length is greater than 2 and log error
            if (splitTag.Length != 2)
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
                    //FindObjectOfType<AudioManager>().Play(tagValue);
                    AkSoundEngine.PostEvent (tagValue, GameObject.FindGameObjectWithTag("MainCamera"));
                    //Debug.Log("sound=" + tagValue);
                    break;
                case TRANSITION_TAG:
                    // Debug.Log("transition=" + tagValue);
                    break;
                default:
                    Debug.LogWarning("tag came in but is not currently being handled" + tag);
                    break;

            }

        }
    }




    //Audio System - looks for hashtags in ink script and plays the corresponding sounds that match the file name
    public void TrackHashToChangeImageSoundTransition(List<string> currentTags) //Function "TrackHashToChangeImageSoundTransition" takes in a string List that calls "currentTags"
    {
        //Loop through each tag in current dialogue line
        foreach (string tag in currentTags)
        {
            //parse tag into key and value pair (keys are: image, sound, translate). Key before colon (":") in Ink file. 
            //returns array of length 2. 1st part is key, 2nd part is value
            string[] splitTag = tag.Split(':');
            //check if array length is greater than 2 and log error
            if (splitTag.Length != 2)
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
                    //FindObjectOfType<AudioManager>().Play(tagValue);
                    AkSoundEngine.PostEvent (tagValue, GameObject.FindGameObjectWithTag("MainCamera"));
                    //Debug.Log("sound=" + tagValue);
                    break;
                case TRANSITION_TAG:
                    // Debug.Log("transition=" + tagValue);
                    break;
                default:
                    Debug.LogWarning("tag came in but is not currently being handled" + tag);
                    break;

            }

        }
    }




    //ContinueButtonPressed 
    public void ContinueButtonPressed()//Called when Continue button is pressed
        {
       
            EnterDialogueMode(_inkJsonAssetTMP);    //1st EnterDialgoue method is called
        Debug.Log("ContinueButtonPress Method called");   //2nd, EnterDialoogue calls method DisplayNextlineTMP
        }


        //Method that enables player to enter dialogue mode and is called via the "Dialogue Trigger"

        public void EnterDialogueMode(TextAsset _inkJsonAssetTMP) //takes in text asset which is our ink JSON file. The Ink JSON file is stored in varialbe "inkJsonAssetTMP." In youtube tutorial, this varialbe is "InkJSON."
        {
            //_story = new Story(_inkJsonAssetTMP.text); //set _story of InkManager to a "new" Story (Story is part of Ink code) that is initalized to be InkJSON file.  _story is "current story" in youtube tutorial
            _dialogueIsPlaying |= true;
            _dialoguePanel.SetActive(true);//toggles visibility of dialogue panel on
        Debug.Log("EnterDialougeMode Method called");

        //display first line of dialogue by calling method "DisplayNextlineTMP"
        Invoke(nameof(DisplayNextlineTMP), 1);



        }

        private void ExitDialogueMode()//Method that closes dialogue panel and sets "dialogueIsPlaying" to false and sets dialogueText.text to empty string.
        {
            _dialogueIsPlaying = false;
            _dialoguePanel.SetActive(false);
            _dialogueText.text = "";
        Debug.Log("ExitDialogueMode Method called");

        }




    
        /*private void Update()
        {
        if (!_dialogueIsPlaying)//if dialogue is NOT playing, return instantly and don't update. NOTE: only want to update when dialogue IS playing.
            Debug.Log("dialogue isn't playing, window closed.");
            {
                return;
            }

            //handle continueing to the next line in the dialogue. In youtube tutorial, they check if button has been pressed with if statement if(InputManager.GetInstance().GetSubmitPressed().
            //Here, the next line of dialogue is call with DisplayNextlineTMP method, which is fired using a the onClick method within the NextButtonScriptTMP script, which itself is fire when the button is clicked.

        }*/







       public void DisplayNextlineTMP() //In youtube tutorial, DisplayNextlineTMP method is named "ContinueStory."
                                      //DisplayNextlineTMP is called from the onClick method within the NextButtonScriptTMP script, which itself is fire when the ContinuebuttonTMP is clicked.
        {
        if (_story.canContinue)//checks if the story can conintue
            {

            string text = _story.Continue();//"Continue" method pulls next line of dialogue off of a stack within the Ink file. Gets next line of script
            /* _dialogueText.CrossFadeAlpha(1, 2.0f, false); */
            
            text =text.Trim(); //removes white space from text
            _dialogueText.text = text; //displays new text
            TrackHashToChangeImageSoundTransition(_story.currentTags); //calls function for HASHTAGS of images and audio. "currentTags" is a Ink specific code that return a List<string> of all tags within a scene. 
            _continueButton.SetActive(true);//toggled ContinueButton visibility on
            

            Debug.Log("DisplayNextlineTMP Method called");
            Debug.Log("_dialogueText ="+_dialogueText.ToString());

            }
        else if (_story.currentChoices.Count > 0)
        {
            DisplayChoices();
        }
        //else //if the story can't continue, an empty JSON file was passed in
        //{
        //    ExitDialogueMode(); //ExitDialogueMode is a method located below that exits the dialogue mode, closing the panel. It's called when no more text is available to be printed out.
        //Debug.Log("ExitDialogue method called form DisplayNextLine method");
        //}
    }






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
        var buttonText = choiceButton.GetComponentInChildren<TextMeshProUGUI>();
        buttonText.text = text;

        return choiceButton;
    }




    void OnClickChoiceButton(Ink.Runtime.Choice choice)
    {
        _story.ChooseChoiceIndex(choice.index); //tells ink which choice was selected
        RefreshChoiceView(); //removes choices from screen
        DisplayNextlineTMP();

    }

    void RefreshChoiceView()
    {
        if (_choiceButtonContainer != null)
        {
            foreach (var button in _choiceButtonContainer.GetComponentsInChildren<UnityEngine.UI.Button>())
            {
                Destroy(button.gameObject);
            }
            
        }
    }
}