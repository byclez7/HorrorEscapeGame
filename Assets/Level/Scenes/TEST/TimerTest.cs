using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public class TimerTest : MonoBehaviour
    {
        Timer testTimer = new Timer(3, 2);
        // Start is called before the first frame update
        void Start()
        {
            
        }

        // Update is called once per frame
        void Update()
        {
            if (testTimer.IsAlarm())
            {
                Debug.Log("Alarm");
            }
        }
    }
}
