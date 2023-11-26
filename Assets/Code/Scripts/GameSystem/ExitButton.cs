using KinematicCharacterController.Examples;
using Michsky.UI.Dark;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public class ExitButton : MonoBehaviour
    {
        public ModalWindowManager button;

        void Update()
        {
            if (Input.GetKeyDown(KeyCode.Escape))
            {
                FindAnyObjectByType<ExamplePlayer>().enabled = false;
                Cursor.lockState = CursorLockMode.None;
                Cursor.visible = true;
                Time.timeScale = 0.0001f;
                button.ModalWindowIn();
            }
        }

        public void Exit()
        {
            Application.Quit();
        }

        public void Continue()
        {
            Time.timeScale = 1f;
            FindAnyObjectByType<ExamplePlayer>().enabled = true;
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
            button.ModalWindowOut();
        }
    }
}
