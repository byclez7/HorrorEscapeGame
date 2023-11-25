using KinematicCharacterController.Examples;
using Michsky.UI.Dark;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

namespace HorrorEscapeGame
{
    public class PlayerController : MonoBehaviour
    {
        public Slider hpSlider;
        public int HP;
        public Image hitScreen;
        public ModalWindowManager modalWindowManager;

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

            if (HP <= 0)
            {
                FindAnyObjectByType<ExamplePlayer>().enabled = false;
                Cursor.lockState = CursorLockMode.None;
                Time.timeScale = 0.0001f;
                modalWindowManager.ModalWindowIn();
            }
        }

        public void ReplayCurrentScene()
        {
            Time.timeScale = 1f;
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
        }

        public void ReplayAtFirst()
        {
            Time.timeScale = 1f;
            SceneManager.LoadScene("Stage1");
        }
    }
}
