using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame.Enemy
{
    [CreateAssetMenu(menuName = "HorrorEscapeGame/Enemy/StatData")]
    public class Stat : ScriptableObject
    {
        public string enemyName;
        public int maxHp;
        public int spd;
        public int dmg;
        public List<AnimationData> animationDatas;
    }
}
