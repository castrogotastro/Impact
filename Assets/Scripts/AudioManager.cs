using UnityEngine.Audio;
using UnityEngine;
using System;

public class AudioManager : MonoBehaviour

{
    //sound array

    public Sound[] sounds;

    //prevents more than 1 audio manager from being loaded at once.
    public static AudioManager instance;



    // Start is called before the first frame update
    void Awake()
    {
        //checks if instance of this object is active. Prevents more than 1 audio manager from loading.
        //set instance = to this object
        //if instance already exist, then destroy gameObject
        if (instance == null)
            instance = this;
            else
            {
                Destroy(gameObject);
                return;
            }



        //makes song play continuously without cutting when scenes change
        DontDestroyOnLoad(gameObject);


        //loop through list, and for each "sound," add an audio source
        //"s" is variable. For each Sound, make varialbe "s" in "sounds" array
        //"s" is sound we're currently looking at
        foreach (Sound s in sounds)
        {
           s.source = gameObject.AddComponent<AudioSource>();
           s.source.clip = s.clip;
           s.source.volume = s.volume;
           s.source.pitch = s.pitch;
           //loops sounds
           s.source.loop = s.loop;
            

        }

     }

     void Start()
     {
        Play("Theme");
     }

    // Plays sound.
    //take in string that is name of sound
    //loop through all sounds, and find sound with right name
    //Find sound in "sounds" array where sound.name is equal to name.
    //store sound is variable "s"
    public void Play (string name)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);

        //prevents error caused when no sound is available (no sound currently matches name)
        if (s == null)
            return;

        s.source.Play();
    }
    
}
