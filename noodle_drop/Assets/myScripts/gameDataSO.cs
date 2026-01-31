using UnityEngine;

[CreateAssetMenu(fileName = "GameData", menuName = "UberCasual/GameData")]
public class gameDataSO : ScriptableObject
{
    [Header("Chopsticks Settings")]
    public float startGapSize = 1.0f;
    public float startSpeed = 2.0f;
    public float gapDecrease = 0.1f;
    public float speedIncrease = 0.2f;

    [Header("Noodle Settings")]
    public float dropSpeed = 5f;
    public float failWaitTime = 1f;
    public float noodleWidth = 0.5f;
}
