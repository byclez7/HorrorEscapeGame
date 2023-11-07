using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public interface IInteractableThing
    {
        public UsableKeyCodeSO usableKey { get; }
        public abstract void Use();
    }
}
