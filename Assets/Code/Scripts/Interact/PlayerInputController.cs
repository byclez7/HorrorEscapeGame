using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

namespace HorrorEscapeGame
{
    public class PlayerInputController : MonoBehaviour
    {
        public InteractKeyController playerKeyController;
        public List<UserKeyInputEvent> userInputs;

        void Start()
        {
            playerKeyController.Initiate(userInputs);
        }

        void Update()
        {
            playerKeyController.UpdateKeyInputEvent();
        }

        public void LogSomeword(string word)
        {
            Debug.Log(word);
        }

        public void AddKey(InteractableWorldItem worldItem)
        {
            playerKeyController.AddInteractableItem(worldItem);
        }
    }

    [System.Serializable]
    public class UserKeyInputEvent : IInteractableThing
    {
        public string purpose;
        public UsableKeyCodeSO key;
        public UnityEvent onEvent;

        public UsableKeyCodeSO usableKey => key;

        public void Use()
        {
            onEvent?.Invoke();
        }
    }
}
