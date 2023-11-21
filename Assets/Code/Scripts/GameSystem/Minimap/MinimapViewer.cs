using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace HorrorEscapeGame
{
    public class MinimapViewer : MonoBehaviour
    {
        public Transform player;
        public List<Transform> targets = new();
        public int minimapSqaureSize = 400;
        public int realmapSqaureSize = 120;
        public Transform minimapTransform;
        public Transform realmapTransform;
        public Transform playerIcon;
        public List<Transform> targetIcons = new();

        private Vector2 centerOfRealmap;
        private Vector2 centerOfMinimap;

        void Start()
        {
            centerOfMinimap = new Vector2(minimapTransform.position.x, minimapTransform.position.y);
            centerOfRealmap = new Vector2(realmapTransform.position.x + realmapSqaureSize / 2f, realmapTransform.position.z + realmapSqaureSize / 2f);
            for (int i = 0; i < targets.Count; i++)
            {
                DisplayTransform(targets[i], targetIcons[i]);
            }
        }

        void Update()
        {
            DisplayTransform(player, playerIcon);
        }

        private void DisplayTransform(Transform showTarget, Transform displayTarget)
        {
            if (showTarget == null) return;

            Vector2 point = new Vector2(showTarget.position.x, showTarget.position.z);
            var realToMinimapRatio = (point - centerOfRealmap) / realmapSqaureSize;
            var relativePosition = realToMinimapRatio * minimapSqaureSize;
            displayTarget.position = relativePosition + centerOfMinimap;
        }
    }
}
