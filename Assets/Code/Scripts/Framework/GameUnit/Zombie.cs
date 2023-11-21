using HorrorEscapeGame.Enemy;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public class Zombie : GameUnitBase
    {
        public string idle;
        public string walk;
        public string attack;

        private List<IState> states = new();

        private void Start()
        {
            states.Add(new BehaviourRoutine.BasicZombieIdle(idle, this));
            states.Add(new BehaviourRoutine.BasicZombieRun(walk, this));
            states.Add(new BehaviourRoutine.BasicZombieAttack(attack, this));
            states.ForEach(state => AddState(state));
            FSM.SetState(GetState(typeof(BehaviourRoutine.BasicZombieIdle)));
        }
    }
}