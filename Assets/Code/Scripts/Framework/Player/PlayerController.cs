using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace HorrorEscapeGame
{
    public class PlayerController : MonoBehaviour
    {
        public Slider hpSlider;
        public int HP;
        public Image hitScreen;

        private bool isHitEventInvoked = false;
        private float alpha;

        void Awake()
        {
            GameUnitBase.TraceTarget = transform;
        }

        private void Update()
        {
            if (isHitEventInvoked)
            {
                hitScreen.color = new(hitScreen.color.r, hitScreen.color.g, hitScreen.color.b, alpha);
                alpha -= Time.deltaTime / 3.4f;
                if (alpha < 0)
                {
                    isHitEventInvoked = false;
                }
            }
        }

        public void OnHit(int damage)
        {
            HP -= damage;
            hpSlider.value = HP;
            alpha = 38 / 255f;
            isHitEventInvoked = true;
        }

        private void OnTriggerEnter(Collider other)
        {
            if (other.gameObject.layer.Equals(LayerMask.NameToLayer("World Item")))
            {
                if (other.gameObject.TryGetComponent<Outline>(out Outline outline))
                {
                    outline.enabled = true;
                }
            }
        }

        private void OnTriggerExit(Collider other)
        {
            if (other.gameObject.layer.Equals(LayerMask.NameToLayer("World Item")))
            {
                if (other.gameObject.TryGetComponent<Outline>(out Outline outline))
                {
                    outline.enabled = false;
                }
            }
        }
    }
}
