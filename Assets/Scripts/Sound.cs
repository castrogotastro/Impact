using UnityEngine.Audio;
using UnityEngine;


[System.Serializable]
public class Sound
{
   //reference t audio clips

   public string name;

   public AudioClip clip;

   [Range (0f, 1f)]
   public float volume;


    [Range(.1f, 3f)]
   public float pitch;

   //store audio source in variable. Value for AudioSource is populated in Awake method of AudioManager, therefore, it shouldn't be visible in inspector.
   [HideInInspector] 
   public AudioSource source;

   //Theme loop
   public bool loop;
}
