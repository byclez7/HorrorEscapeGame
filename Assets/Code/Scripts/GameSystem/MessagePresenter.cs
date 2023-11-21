using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace HorrorEscapeGame
{
    public class MessagePresenter : MonoBehaviour
    {
        public float timer;
        public float offset = 0.2f;
        public Image background;
        public TMP_Text message;

        private MessagePresenter clone = null;
        private bool isWorking = false;

        void Start()
        {
            isWorking = false;
        }

        public void Show(string msg)
        {
            if (clone == null)
            {
                clone = Instantiate(this);
            }

            if (!clone.isWorking)
            {
                clone.message.text = msg;
                clone.StartCoroutine(clone.FadeOut());
            }
        }

        IEnumerator FadeOut()
        {
            isWorking = true;

            var initTime = timer;
            timer += offset;
            while (timer > 0)
            {
                timer -= Time.deltaTime;
                var alpha = timer / initTime;
                message.color = new Color(message.color.r, message.color.g, message.color.b, alpha);
                background.color = new Color(background.color.r, background.color.g, background.color.b, alpha);
                yield return null;
            }

            isWorking = false;
            timer = initTime;
        }
    }
}
