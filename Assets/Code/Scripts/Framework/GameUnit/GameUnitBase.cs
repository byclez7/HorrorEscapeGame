using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

namespace HorrorEscapeGame
{
    [RequireComponent(typeof(Animator), typeof(NavMeshAgent), typeof(FiniteMachine))]
    public abstract class GameUnitBase : MonoBehaviour
    {
        public static Transform TraceTarget;
        public float detectDistance;
        public float attackDiatance;
        public Transform weapon;
        public UnitSound unitSound;
        public FiniteMachine FSM
        {
            get
            {
                if (_fsm == null)
                {
                    _fsm = GetComponent<FiniteMachine>();
                    _fsm.Unit = this;
                }
                return _fsm;
            }
        }

        private Animator AnimController
        {
            get
            {
                if (_animController == null)
                {
                    _animController = GetComponent<Animator>();
                }
                return _animController;
            }
        }
        private NavMeshAgent agent;
        private const float transitionDuration = 0.1f;
        private Dictionary<Type, IState> states;
        private FiniteMachine _fsm;
        private Animator _animController;

        public void SetAgentLocation(Vector3 loc)
        {
            if (agent == null)
            {
                agent = GetComponent<NavMeshAgent>();
            }
            agent.SetDestination(loc);
        }

        public void SetAgentMovementStop(bool isStop)
        {
            agent.isStopped = isStop;
        }

        public void SetStateAnimation(int clipHash)
        {
            AnimController.CrossFade(clipHash, transitionDuration);
        }

        public void AddState(IState state)
        {
            states ??= new();
            states.Add(state.GetType(), state);
        }

        public void ChangeState(Type type)
        {
            FSM.ChangeState(states[type]);
        }

        protected IState GetState(Type type)
        {
            return states[type];
        }

        public float GetDistanceOfTarget()
        {
            return Vector3.Distance(transform.position, TraceTarget.position);
        }

        public bool IsCloserThanTarget(float standard)
        {
            return GetDistanceOfTarget() < standard;
        }

        public float GetAnimLength(string animName)
        {
            var allClips = AnimController.runtimeAnimatorController.animationClips;
            for (int i = 0; i < allClips.Length; i++)
            {
                if (allClips[i].name == animName)
                    return allClips[i].length;
            }
            return 0;
        }
    }
}
