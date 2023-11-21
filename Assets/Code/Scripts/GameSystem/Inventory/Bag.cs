using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    [CreateAssetMenu(menuName = "HorrorEscapeGame/Inventory/Bag")]
    public class Bag : ScriptableObject
    {
        public MessagePresenter messagePresenter;
        public List<IInteractableThing> items = new();

        public void AddItem(IInteractableThing thing)
        {
            messagePresenter.Show("Good!");
            if (items.Exists(item => item == thing))
                return;

            items.Add(thing);
        }
    }
}
