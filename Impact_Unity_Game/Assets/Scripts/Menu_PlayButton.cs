using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class Menu_PlayButton : MonoBehaviour
{
   [SerializeField] private TMP_Text playButtonTextBox;
   [SerializeField] private string textToDisplay;

   public void SetTextBoxText()
   {
    playButtonTextBox.text = textToDisplay;
   }
}
