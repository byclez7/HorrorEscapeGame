using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public class Bag : MonoBehaviour
    {
        public List<IInteractableThing> items;

        void Start()
        {
        
        }

        public void AddItem(IInteractableThing thing)
        {
            if (items.Exists(item => item == thing))
                return;

            items.Add(thing);
        }
    }
}
