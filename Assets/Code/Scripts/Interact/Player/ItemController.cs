using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public class ItemController : MonoBehaviour, IInteractableThing
    {
        public LayerMask pickLayer;
        private Ray ray;
        private RaycastHit hitInfo;

        public UsableKeyCodeSO usableKey => null;

        public void Use()
        {
            ray = Camera.main.ViewportPointToRay(new Vector2(0.5f, 0.5f));
            if (Physics.Raycast(ray, out hitInfo, 10f, pickLayer.value))
            {
                if (hitInfo.collider.TryGetComponent(out IInteractableThing item))
                {
                    item.Use();
                }
            }
        }
    }
}
