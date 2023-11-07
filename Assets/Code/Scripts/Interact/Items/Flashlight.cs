using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public class Flashlight : InteractableWorldItem
    {
        public Light light;

        void Start()
        {
        
        }

        void Update()
        {
        
        }

        private void TurnOnOrOff()
        {
            light.gameObject.SetActive(!light.gameObject.activeSelf);
        }

        public override void Use()
        {
            TurnOnOrOff();
        }
    }
}
