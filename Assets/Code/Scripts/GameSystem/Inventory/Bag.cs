using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    [CreateAssetMenu(menuName = "HorrorEscapeGame/Inventory/Bag")]
    public class Bag : ScriptableObject
    {
        public MessagePresenter messagePresenter;

        private readonly List<WorldItem> items = new();

        public void AddItem(WorldItem thing)
        {
            if (items.Exists(item => item == thing))
                return;
            messagePresenter.Show(thing.name + " obtained!");
            thing.OnPicking.Invoke();
            items.Add(thing);
        }
    }
}
