using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public abstract class InteractableThing : MonoBehaviour
    {
        public UsableKeyCodeSO usableKey;
        public abstract void Use();
    }
}
