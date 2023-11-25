using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

namespace HorrorEscapeGame
{
    public class MissionController : MonoBehaviour
    {
        public string onMissionInstruct;
        public TMP_Text missionGoalText;
        public TMP_Text missionProgressText;
        public MessagePresenter messagePresenter;
        public List<StageMission> missions = new List<StageMission>();
        public AudioClip onMissionStartSound;

        void Start()
        {
            StartCoroutine(OnStart());
        }

        IEnumerator OnStart()
        {
            yield return new WaitForSeconds(1);
            messagePresenter.Show(onMissionInstruct, 5f);
            SoundManager.PlayOneShotSFX(onMissionStartSound);
        }

        public bool IsCompleteStage(int stage)
        {
            if (missions[stage].missionTargets.Count <= missions[stage].foundCount)
                return true;
            return false;
        }
    }

    [System.Serializable]
    public class StageMission
    {
        public string stageName;
        public List<GameObject> missionTargets = new();
        public int foundCount = 0;
    }
}
