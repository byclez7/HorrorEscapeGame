using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame.Enemy
{
    public abstract class BehaviourRoutine : IState
    {
        protected int animationHash = -1;
        protected readonly string stateAnimation;

        public BehaviourRoutine(string clipName, GameUnitBase gameUnit)
        {
            stateAnimation = clipName;
            animationHash = Animator.StringToHash(stateAnimation);
        }

        protected int GetClipHash()
        {
            if (animationHash == -1)
            {
                return Animator.StringToHash(stateAnimation);
            }
            return animationHash;
        }

        public abstract void OnEnter(GameUnitBase unit);

        public abstract void OnExit(GameUnitBase unit);

        public abstract void OnUpdate(GameUnitBase unit);

        #region BasicZombie
        public class BasicZombieIdle : BehaviourRoutine     
        {
            public BasicZombieIdle(string clipName, GameUnitBase gameUnit) : base(clipName, gameUnit)
            {
            }

            public override void OnEnter(GameUnitBase unit)
            {
                unit.SetStateAnimation(GetClipHash());
                unit.SetAgentLocation(unit.transform.position);
            }

            public override void OnExit(GameUnitBase unit)
            {
                Debug.Log("Exit");
            }

            public override void OnUpdate(GameUnitBase unit)
            {
                if (unit.IsCloserThanTarget(unit.detectDistance))
                {
                    unit.ChangeState(typeof(BasicZombieRun));
                }
            }
        }

        public class BasicZombieRun : BehaviourRoutine
        {
            public BasicZombieRun(string clipName, GameUnitBase gameUnit) : base(clipName, gameUnit)
            {
            }

            public override void OnEnter(GameUnitBase unit)
            {
                unit.SetStateAnimation(GetClipHash());
                unit.SetAgentMovementStop(false);
            }

            public override void OnExit(GameUnitBase unit)
            {
                unit.SetAgentMovementStop(true);
            }

            public override void OnUpdate(GameUnitBase unit)
            {
                if (!unit.IsCloserThanTarget(unit.detectDistance))
                {
                    unit.ChangeState(typeof(BasicZombieIdle));
                    return;
                }
                else if (unit.IsCloserThanTarget(unit.attackDiatance))
                {
                    unit.ChangeState(typeof(BasicZombieAttack));
                    return;
                }
                unit.SetAgentLocation(GameUnitBase.TraceTarget.position);
                //unit.transform.Translate((GameUnitBase.TraceTarget.position - unit.transform.position).normalized * Time.deltaTime);
            }
        }

        public class BasicZombieAttack : BehaviourRoutine
        {
            private Timer hitEventTimer;
            private Timer attackEndTimer;

            public BasicZombieAttack(string clipName, GameUnitBase gameUnit) : base(clipName, gameUnit)
            {
                var hitTiming = gameUnit.GetAnimLength(stateAnimation);
                hitEventTimer = new Timer(hitTiming, hitTiming * 1f / 3f);
                attackEndTimer = new Timer(hitTiming, hitTiming * 9f / 10f);
            }

            public override void OnEnter(GameUnitBase unit)
            {
                unit.SetStateAnimation(GetClipHash());
                hitEventTimer.Reset();
                attackEndTimer.Reset();
            }

            public override void OnExit(GameUnitBase unit)
            {
                
            }

            public override void OnUpdate(GameUnitBase unit)
            {
                if (hitEventTimer.IsAlarm())
                {
                    if (unit.weapon != null)
                    {
                        var cols = Physics.OverlapSphere(unit.weapon.position, 0.25f);
                        foreach (var col in cols)
                        {
                            if (col.TryGetComponent(out PlayerController player))
                            {
                                player.OnHit(20);
                            }
                        }
                    }
                }
                bool isAttackEndAlarm = attackEndTimer.IsAlarm();
                if (!unit.IsCloserThanTarget(unit.attackDiatance) && isAttackEndAlarm)
                {
                    unit.ChangeState(typeof(BasicZombieRun));
                }
            }
        }

        #endregion
    }
}
