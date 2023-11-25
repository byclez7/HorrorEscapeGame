using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace HorrorEscapeGame
{
    public class Padlock : MonoBehaviour, IInteractableThing
    {
        public static int[] result = new int[3] { 3, 0, 2 };
        public MessagePresenter messagePresenter;
        public int lockerIndex = 0;
        public UsableKeyCodeSO usableKey => null;
        public AudioClip openSound;

        private static int[] answer = new int[3] {0, 0, 0 };
        private bool isRotating = false;
        private int currentLockPsw = 0;
        private float speed = 120f;
        private float totalAngle = 0;
        private Animator animator;

        private void Start()
        {
            animator = GetComponentInParent<Animator>();
        }

        public void Use()
        {
            if (!isRotating)
            {
                StartCoroutine(Rotate());
            }
        }

        IEnumerator Rotate()
        {
            isRotating = true;
            var angle = 0f;
            while (angle < 60)
            {
                var deltaAngle = Time.deltaTime * speed;
                angle += deltaAngle;
                yield return null;
                transform.Rotate(new Vector3(-deltaAngle, 0, 0));
            }
            totalAngle -= 60;
            transform.localRotation = Quaternion.AngleAxis(totalAngle, Vector3.right);
            isRotating = false;
            answer[lockerIndex] = (answer[lockerIndex] + 1) % 6;

            CheckResult();
        }

        private void CheckResult()
        {
            for (int i = 0; i < answer.Length; i++)
            {
                if (answer[i] != result[i])
                    return;
            }
            animator.SetTrigger("Success");
            Invoke("NextScene", 2f);
            messagePresenter.Show("자물쇠를 열었습니다!");
            SoundManager.PlaySFX(openSound);
            enabled = false;
        }

        private void NextScene()
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1, LoadSceneMode.Single);
        }
    }
}
