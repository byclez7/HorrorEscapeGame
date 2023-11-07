using HorrorEscapeGame.Enemy;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public class FiniteMachine : MonoBehaviour
    {
        public GameUnitBase Unit { get; set; }

        private IState current;

        void Update()
        {
            if (current == null)
                return;

            current.OnUpdate(Unit);
        }

        public void SetState(IState state)
        {
            current = state;
            current.OnEnter(Unit);
        }

        public void ChangeState(IState state)
        {
            if (current == state)
                return;

            var prev = current;
            current = state;
            current.OnEnter(Unit);
            prev.OnExit(Unit);
        }
    }
}
