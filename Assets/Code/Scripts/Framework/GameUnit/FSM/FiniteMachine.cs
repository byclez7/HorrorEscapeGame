using HorrorEscapeGame.Enemy;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    [RequireComponent(typeof(BehaviourRoutine))]
    public class FiniteMachine : MonoBehaviour
    {
        private IState current;
        private BehaviourRoutine enemyBase;

        void Start()
        {
            enemyBase = GetComponent<BehaviourRoutine>();
        }

        void Update()
        {
            if (current == null)
                return;

            current.OnUpdate(enemyBase);
        }

        public void ChangeState(IState state)
        {
            if (current == state)
                return;

            var prev = current;
            current = state;
            current.OnEnter(enemyBase);
            prev.OnExit(enemyBase);
        }
    }
}
