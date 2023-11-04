using HorrorEscapeGame.Enemy;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public interface IState
    {
        void OnEnter(BehaviourRoutine routine);
        void OnUpdate(BehaviourRoutine routine);
        void OnExit(BehaviourRoutine routine);
    }
}
