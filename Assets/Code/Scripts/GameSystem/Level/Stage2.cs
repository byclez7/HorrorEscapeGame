using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace HorrorEscapeGame
{
    public class Stage2 : MonoBehaviour, IInteractableThing
    {
        public MessagePresenter messagePresenter;
        public bool isKeyContain;
        public AudioClip openSound;

        public UsableKeyCodeSO usableKey => null;

        void Start()
        {
            isKeyContain = false;
        }

        public void TryCompleteStage()
        {
            if (isKeyContain)
            {
                messagePresenter.Show("자물쇠를 열었습니다.");
                SoundManager.PlaySFX(openSound);
                Invoke("NextScene", 2f);
                enabled = false;
            }
            else
            {
                messagePresenter.Show("열쇠가 필요합니다.");
            }
        }

        public void KeyFound()
        {
            isKeyContain = true;
        }
        
        private void NextScene()
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        }

        public void Use()
        {
            TryCompleteStage();
        }
    }
}
