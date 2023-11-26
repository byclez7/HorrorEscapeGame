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
                messagePresenter.Show("탈출에 성공했습니다! 메인메뉴로 돌아갑니다.");
                Invoke("GoToMainMenu", 3f);
            }
        }

        private void GoToMainMenu()
        {
            SceneManager.LoadScene("Intro");
        }
    }
}
