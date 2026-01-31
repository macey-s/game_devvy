using UnityEngine;
using TMPro;

public class scoreManager : MonoBehaviour
{
    [Header("UI")]
    public TMP_Text scoreText; // Drag your TextMeshProUGUI element here

    private int score = 0;

    // Call this to add a point
    public void AddPoint()
    {
        score++;
        UpdateUI();
    }

    // Call this to reset the score
    public void ResetScore()
    {
        score = 0;
        UpdateUI();
    }

    private void UpdateUI()
    {
        if (scoreText != null)
        {
            scoreText.text = " " + score;
        }
    }
}
