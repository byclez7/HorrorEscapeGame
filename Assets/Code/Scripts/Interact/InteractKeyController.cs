using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    [CreateAssetMenu(menuName = "HorrorEscapeGame/GameRule/KeyController")]
    public class InteractKeyController : ScriptableObject
    {
        private IInteractableThing currentUsing;
        private readonly List<IInteractableThing> allItems = new();

        public void Initiate<T>(List<T> initialValues = null) where T : IInteractableThing
        {
            allItems.AddRange((IEnumerable<IInteractableThing>)(initialValues ?? new()));
        }

        public void AddInteractableItem<T>(T item) where T : IInteractableThing
        {
            allItems.Add(item);
        }

        public void UpdateKeyInputEvent()
        {
            if (Input.anyKeyDown)
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
