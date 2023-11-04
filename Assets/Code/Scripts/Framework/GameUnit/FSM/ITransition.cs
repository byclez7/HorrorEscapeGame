using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public interface ITransition
    {
        void Transition(IState state, IValidate validate);
    }
}
