using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace HorrorEscapeGame
{
    public class MissionController : MonoBehaviour
    {
        public List<StageMission> missions = new List<StageMission>();

        void Start()
        {
            DontDestroyOnLoad(gameObject);
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
