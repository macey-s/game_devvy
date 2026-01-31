using UnityEngine;
using UnityEngine.SceneManagement;

public class gameManager : MonoBehaviour
{
    [Header("References")]
    public chopstickMovement chopsticks;
    public Transform noodle;
    public Transform bowl;
    public scoreManager scoreManager; // Score system

    [Header("Data")]
    public gameDataSO gameData; // ScriptableObject with tuning values

    private bool hasTapped = false;
    private bool dropping = false;
    private Vector3 noodleStartPos;
    private Vector3 targetPosition;
    private bool lastDropSuccess;

    void Start()
    {
        noodleStartPos = noodle.position;

        // Initialize chopsticks to starting values from SO
        chopsticks.gapSize = gameData.startGapSize;
        chopsticks.speed = gameData.startSpeed;
        chopsticks.UpdateGap();
    }

    void Update()
    {
        if (!hasTapped)
        {
            if (Input.GetMouseButtonDown(0) || Input.touchCount > 0)
            {
                hasTapped = true;
                chopsticks.StopMovement();
                CheckResult();
            }
        }

        if (dropping)
        {
            // Move noodle towards target (bowl or chopsticks)
            noodle.position = Vector3.MoveTowards(noodle.position, targetPosition, gameData.dropSpeed * Time.deltaTime);

            // Check if noodle reached target
            if (Vector3.Distance(noodle.position, targetPosition) < 1.5f)
            {
                dropping = false;

                if (lastDropSuccess)
                {
                    ResetRound(true);
                }
                else
                {
                    // Fail: wait a moment, then reset
                    Invoke(nameof(ResetAfterFail), gameData.failWaitTime);
                }
            }
        }
    }

    void CheckResult()
    {
        float noodleX = noodle.position.x;
        float chopstickX = chopsticks.transform.position.x;

        float halfGap = chopsticks.gapSize / 2f;
        float halfNoodle = gameData.noodleWidth / 2f;

        bool fits =
            noodleX - halfNoodle > chopstickX - halfGap &&
            noodleX + halfNoodle < chopstickX + halfGap;

        lastDropSuccess = fits;

        if (fits)
        {
            Debug.Log("SUCCESS!");
            targetPosition = bowl.position;
            scoreManager.AddPoint();
        }
        else
        {
            Debug.Log("FAIL!");
            targetPosition = new Vector3(noodle.position.x, chopsticks.transform.position.y + 0.1f, noodle.position.z);
            scoreManager.ResetScore();
        }

        dropping = true;
    }

    void ResetRound(bool wasSuccess)
    {
        if (wasSuccess)
        {
            // Success: increase difficulty
            chopsticks.gapSize = Mathf.Max(0.3f, chopsticks.gapSize - gameData.gapDecrease);
            chopsticks.speed += gameData.speedIncrease;
        }
        else
        {
            // Fail: reset to starting values
            chopsticks.gapSize = gameData.startGapSize;
            chopsticks.speed = gameData.startSpeed;
        }

        noodle.position = noodleStartPos;
        hasTapped = false;
        chopsticks.UpdateGap();
        chopsticks.ResumeMovement();
    }

    // Wrapper for Invoke to avoid syntax issues
    void ResetAfterFail()
    {
        ResetRound(false);
    }
}
