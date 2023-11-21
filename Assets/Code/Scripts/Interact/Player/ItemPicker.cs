using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public class ItemPicker : MonoBehaviour, IInteractableThing
    {
        public Bag bag;
        public LayerMask pickLayer;
        public UsableKeyCodeSO key;
        public UsableKeyCodeSO usableKey => key;

        private Ray ray = new Ray();
        private RaycastHit hitInfo = new RaycastHit();

        public void Use()
        {
            ray = Camera.main.ViewportPointToRay(new Vector2(0.5f, 0.5f));
            if (Physics.Raycast(ray, out hitInfo, 10f, pickLayer.value))
            {
                if (hitInfo.collider.TryGetComponent(out IInteractableThing item))
                {
                    bag.AddItem(item);
                }
            }
        }
    }
}
