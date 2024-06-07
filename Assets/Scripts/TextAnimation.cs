using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TextAnimation : MonoBehaviour
{
    [SerializeField] private Animator textAnimation; //text


    // Start is called before the first frame update
    void Start()
    {
        textAnimation = GetComponent<Animator>(); //Initalizes variable for text animation
    }

    // Update is called once per frame
   public void PlayTextAnimation ()
    {
        textAnimation.Play("TextFadeInAnimation", 0, 1);
    }
}
