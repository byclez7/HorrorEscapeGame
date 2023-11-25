using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public class Door : MonoBehaviour
    {
        // Start is called before the first frame update
        void Start()
        {
            StartCoroutine(Interact());
        }

        // Update is called once per frame
        void Update()
        {
        
        }

        IEnumerator Interact(bool isOpen = true)
        {
            var y = transform.localRotation.eulerAngles.y;
            while (y < 90)
            {
                y += Time.deltaTime;
                transform.localRotation = Quaternion.Euler(0, y, 0);
                yield return null;
            }
        }
    }
}
