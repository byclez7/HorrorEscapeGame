using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public class PlayerController : MonoBehaviour
    {
        // Start is called before the first frame update
        void Start()
        {
            GameUnitBase.TraceTarget = transform;
        }

        // Update is called once per frame
        void Update()
        {
        
        }
    }
}
