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

        public void Show(string msg, float _time = 0)
        {
            _time = _time == 0 ? timer : _time;
            if (clone == null)
            {
                clone = Instantiate(this);
            }

            if (!clone.isWorking)
            {
                clone.message.text = msg;
                clone.StartCoroutine(clone.FadeOut(_time));
            }
        }

        public void Show(string msg)
        {
            Show(msg, 0);
        }

        IEnumerator FadeOut(float time)
        {
            isWorking = true;

            var initTime = time;
            time += offset;
            while (time > 0)
            {
                time -= Time.deltaTime;
                var alpha = time / initTime;
                message.color = new Color(message.color.r, message.color.g, message.color.b, alpha);
                background.color = new Color(background.color.r, background.color.g, background.color.b, alpha);
                yield return null;
            }

            isWorking = false;
        }
    }
}
