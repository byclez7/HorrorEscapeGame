using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public abstract class InteractableWorldItem : MonoBehaviour, IInteractableThing
    {
        public UsableKeyCodeSO key;
        public UsableKeyCodeSO usableKey => key;

        public abstract void Use();
    }
}
