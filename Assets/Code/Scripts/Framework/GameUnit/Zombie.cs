using HorrorEscapeGame.Enemy;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public class Zombie : GameUnitBase
    {
        private List<IState> states = new();

        private void Start()
        {
            states.Add(new BehaviourRoutine.BasicZombieIdle("Idle", this));
            states.Add(new BehaviourRoutine.BasicZombieRun("SpeedWalk", this));
            states.Add(new BehaviourRoutine.BasicZombieAttack("Attack01", this));
            states.ForEach(state => AddState(state));
            FSM.SetState(GetState(typeof(BehaviourRoutine.BasicZombieIdle)));
        }

        private void Update()
        {

        }
    }
}