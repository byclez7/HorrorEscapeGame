using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public struct Timer
    {
        private float time;
        private float originValue;
        private float alertTime;
        private bool isAlerted;

        public Timer(float time, float alert)
        {
            this.time = time;
            originValue = time;
            alertTime = time - alert;
            isAlerted = false;
        }

        public bool IsAlarm()
        {
            time -= Time.deltaTime;
            if (time <= alertTime && !isAlerted)
            {
                isAlerted = true;
                return true;
            }
            if (time <= 0f)
            {
                time += originValue;
                isAlerted = false;
            }
            return false;
        }

        public void Reset()
        {
            isAlerted = false;
            time = originValue;
        }
    }
}
