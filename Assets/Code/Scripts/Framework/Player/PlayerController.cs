using KinematicCharacterController.Examples;
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
        private ExampleCharacterCamera mainCam;

        void Awake()
        {
            GameUnitBase.TraceTarget = transform;
        }

        private void Start()
        {
            mainCam = Camera.main.GetComponent<ExampleCharacterCamera>();
            Debug.Log(mainCam);
        }

        private void Update()
        {
            if (isHitEventInvoked)
            {
                hitScreen.color = new(hitScreen.color.r, hitScreen.color.g, hitScreen.color.b, alpha);
                alpha -= Time.deltaTime / 5f;
                if (alpha < 0)
                {
                    isHitEventInvoked = false;
                }
            }
        }

        //IEnumerator CameraQuake()
        //{
        //    var originalPosition = mainCam.transform.position;
        //    mainCam.enabled = false;
        //    float timer = 0.75f;
        //    while (timer > 0)
        //    {
        //        timer -= Time.deltaTime;
        //        Camera.main.transform.position += Random.onUnitSphere * 0.02f;
        //        yield return new WaitForSeconds(0.1f);
        //    }
        //    mainCam.transform.position = originalPosition;
        //    mainCam.enabled = true;
        //}

        IEnumerator CameraQuake()
        {
            mainCam.OnQuake += Quake;
            yield return new WaitForSeconds(1f);
            mainCam.OnQuake -= Quake;
        }

        private Vector3 Quake(Vector3 pos)
        {
            return pos + Random.onUnitSphere * 0.05f;
        }

        public void OnHit(int damage)
        {
            HP -= damage;
            hpSlider.value = HP;
            alpha = 38 / 255f;
            isHitEventInvoked = true;
            StartCoroutine(CameraQuake());
        }
    }
}
