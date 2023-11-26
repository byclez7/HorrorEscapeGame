using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace HorrorEscapeGame
{
    public class Stage3 : MonoBehaviour
    {
        public MessagePresenter messagePresenter;
        public AudioClip successSound;

        private bool isSuccess = false;

        private void OnTriggerEnter(Collider other)
        {
            if (!isSuccess)
            {
                isSuccess = true;

                SoundManager.PlaySFX(successSound);
                messagePresenter.Show("Ż�⿡ �����߽��ϴ�! ���θ޴��� ���ư��ϴ�.");
                Invoke("GoToMainMenu", 3f);
            }
        }

        private void GoToMainMenu()
        {
            SceneManager.LoadScene("Intro");
        }
    }
}
