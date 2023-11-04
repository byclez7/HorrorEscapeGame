using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame.Enemy
{
    public class BehaviourRoutine : MonoBehaviour
    {
        public HashSet<int> Behaviours = new HashSet<int>();
        // Start is called before the first frame update
        void Start()
        {
            Behaviours.Add(0);
            Behaviours.Add(0);
            Behaviours.Add(0);
            Behaviours.Add(1);
            Debug.Log(Behaviours.Count);
        }

        // Update is called once per frame
        void Update()
        {
        
        }
    }
}
