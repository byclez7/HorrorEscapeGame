using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;

namespace HorrorEscapeGame
{
    public class InteractController : MonoBehaviour
    {
        public List<InteractableThing> startItems;

        private InteractableThing currentUsing;
        private readonly List<InteractableThing> allItems = new();

        void Start()
        {
            allItems.AddRange(startItems);
        }

        void Update()
        {
            if (Input.inputString.Length > 0)
                InteractWithPressedKey();
        }

        public void ChangeItem(KeyCode keyCode)
        {
            var temp = allItems.Exists(item => item.usableKey.data == keyCode) ? allItems.Find(item => item.usableKey.data == keyCode) : currentUsing;
            currentUsing = temp;
            currentUsing.Use();
        }

        private KeyCode GetValidKeyCode()
        {
            for (int i = 0; i < allItems.Count; i++)
            {
                if (Input.GetKeyDown(allItems[i].usableKey.data))
                    return allItems[i].usableKey.data;
            }
            return KeyCode.None;
        }

        private void InteractWithPressedKey()
        {
            var key = GetValidKeyCode();
            if (key != KeyCode.None)
                ChangeItem(GetValidKeyCode());
        }
    }
}
