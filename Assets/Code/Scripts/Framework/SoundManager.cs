using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public class SoundManager : MonoBehaviour
    {
        public static SoundManager Inst { get; private set; }
        public AudioSource SFX;
        public AudioSource BGM;

        void Start()
        {
            if (Inst == null)
                Inst = this;
        }

        public static void PlaySFX(AudioClip sfx)
        {
            if (sfx == null)
                return;
            Inst.SFX.clip = sfx;
            Inst.SFX.Play();
        }

        public static void PlayOneShotSFX(AudioClip sfx)
        {
            if (sfx == null)
                return;
            Inst.SFX.PlayOneShot(sfx);
        }

        public static void PlayBGM(AudioClip bgm)
        {
            Inst.BGM.clip = bgm;
            Inst.BGM.Play();
        }
    }
}
