using HorrorEscapeGame.Enemy;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public interface IState
    {
        void OnEnter(GameUnitBase unit);
        void OnUpdate(GameUnitBase unit);
        void OnExit(GameUnitBase unit);
    }
}
