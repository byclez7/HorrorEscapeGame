using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame.Enemy
{
    [CreateAssetMenu(menuName = "HorrorEscapeGame/Enemy/AnimationData")]
    public class BehaveAnimation : ScriptableObject
    {
        public string type;
        public AnimationClip defaultAnimation;
    }
}
