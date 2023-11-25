using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public class ItemDetector : MonoBehaviour
    {
        private void OnTriggerEnter(Collider other)
        {
            if (other.gameObject.layer.Equals(LayerMask.NameToLayer("World Item")))
            {
                if (other.gameObject.TryGetComponent<Outline>(out Outline outline))
                {
                    outline.enabled = true;
                }
            }
        }

        private void OnTriggerExit(Collider other)
        {
            if (other.gameObject.layer.Equals(LayerMask.NameToLayer("World Item")))
            {
                if (other.gameObject.TryGetComponent<Outline>(out Outline outline))
                {
                    outline.enabled = false;
                }
            }
        }
    }
}
