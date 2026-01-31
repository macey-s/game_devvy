using UnityEngine;

public class gameManager : MonoBehaviour
{
    [Header("References")]
    public chopstickMovement chopsticks;
    public Transform noodle;
    public Transform bowl; // Where noodle lands on success

    [Header("Tuning")]
    public float noodleWidth = 0.5f;
    public float dropSpeed = 5f;        // Speed noodle falls
    public float gapDecrease = 0.1f;    // How much the chopsticks gap shrinks per success
    public float speedIncrease = 0.2f;  // How much chopstick speed increases per success
    public float failWaitTime = 1f;     // Time to pause noodle on chopsticks for fail

    private bool hasTapped = false;
    private bool dropping = false;
    private Vector3 noodleStartPos;
    private Vector3 targetPosition;
    private bool lastDropSuccess;

    void Start()
    {
        noodleStartPos = noodle.position;
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
            noodle.position = Vector3.MoveTowards(noodle.position, targetPosition, dropSpeed * Time.deltaTime);

            // Check if noodle reached target
            if (Vector3.Distance(noodle.position, targetPosition) < 0.01f)
            {
                dropping = false;

                if (lastDropSuccess)
                {
                    ResetRound();
                }
                else
                {
                    // Fail: wait a moment, then reset
                    Invoke(nameof(ResetRound), failWaitTime);
                }
            }
        }
    }

    void CheckResult()
    {
        float noodleX = noodle.position.x;
        float chopstickX = chopsticks.transform.position.x;

        float halfGap = chopsticks.gapSize / 2f;
        float halfNoodle = noodleWidth / 2f;

        bool fits =
            noodleX - halfNoodle > chopstickX - halfGap &&
            noodleX + halfNoodle < chopstickX + halfGap;

        lastDropSuccess = fits;

        if (fits)
        {
            Debug.Log("SUCCESS!");
            targetPosition = bowl.position;
        }
        else
        {
            Debug.Log("FAIL!");
            // Drop to just above chopsticks
            targetPosition = new Vector3(noodle.position.x, chopsticks.transform.position.y + 1.5f, noodle.position.z);
        }

        dropping = true;
    }

    void ResetRound()
    {
        // Increase difficulty for next round
        chopsticks.gapSize = Mathf.Max(0.3f, chopsticks.gapSize - gapDecrease); // minimum gap
        chopsticks.speed += speedIncrease;

        // Reset noodle position
        noodle.position = noodleStartPos;

        // Reset input and resume chopsticks
        hasTapped = false;
        chopsticks.UpdateGap(); // in case your ChopsticksMover adjusts visuals
        chopsticks.ResumeMovement();
    }
}
