using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    [CreateAssetMenu(menuName = "HorrorEscapeGame/Sound/Unit")]
    public class UnitSound : ScriptableObject
    {
        public AudioClip idle;
        public AudioClip attack;
        public AudioClip walk;
        public AudioClip hit;
        public AudioClip awake;
        public AudioClip dead;
        public AudioClip run;
    }
}
