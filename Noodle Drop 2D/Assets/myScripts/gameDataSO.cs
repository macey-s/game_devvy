using UnityEngine;

[CreateAssetMenu(fileName = "GameData", menuName = "UberCasual/GameData")]
public class gameDataSO : ScriptableObject
{
    [Header("chopsticks settings")]
    public float startGapSize = 1.0f;
    public float startSpeed = 2.0f;
    public float gapDecrease = 0.1f;
    public float speedIncrease = 0.2f;
    public float maxSpeed = 5.0f;
    public float minGapSize = 0.5f;

    [Tooltip("successes before gap shrinks")]
    public int gapShrinkStreak = 3;

    [Header("noodle settings")]
    public float dropSpeed = 5f;
    public float failWaitTime = 1f;
    public float successWaitTime = 0.75f;
    public float noodleWidth = 0.5f;
}
