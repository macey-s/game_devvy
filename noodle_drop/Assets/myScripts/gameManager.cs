using UnityEngine;

public class gameManager : MonoBehaviour
{
    public enum GameState { Aiming, Dropping, FailPause }

    [Header("References")]
    public chopstickMovement chopsticks;
    public Transform noodle;
    public Transform bowl;
    public scoreManager scoreManager;

    [Header("Data")]
    public gameDataSO gameData;

    [Header("State (Debug)")]
    [SerializeField] private GameState state = GameState.Aiming;

    private Vector3 noodleStartPos;
    private Vector3 targetPosition;
    private bool lastDropSuccess;
    private float failTimer;

    void Start()
    {
        noodleStartPos = noodle.position;

        // Initialize chopsticks to starting values from SO
        chopsticks.gapSize = gameData.startGapSize;
        chopsticks.speed = gameData.startSpeed;
        chopsticks.UpdateGap();
        chopsticks.ResumeMovement();

        state = GameState.Aiming;
    }

    void Update()
    {
        switch (state)
        {
            case GameState.Aiming:
                HandleInput();
                break;

            case GameState.Dropping:
                HandleDropMovement();
                break;

            case GameState.FailPause:
                HandleFailPause();
                break;
        }
    }

    void HandleInput()
    {
        bool tappedMouse = Input.GetMouseButtonDown(0);
        bool tappedTouch = (Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Began);

        if (!tappedMouse && !tappedTouch) return;

        chopsticks.StopMovement();
        CheckResult();              // sets target + score + lastDropSuccess
        state = GameState.Dropping; // lock input until drop finishes
    }

    void HandleDropMovement()
    {
        noodle.position = Vector3.MoveTowards(
            noodle.position,
            targetPosition,
            gameData.dropSpeed * Time.deltaTime
        );

        if (Vector3.Distance(noodle.position, targetPosition) < 1.5f)
        {
            if (lastDropSuccess)
            {
                ResetRound(true);
                state = GameState.Aiming;
            }
            else
            {
                failTimer = gameData.failWaitTime;
                state = GameState.FailPause;
            }
        }
    }

    void HandleFailPause()
    {
        failTimer -= Time.deltaTime;
        if (failTimer > 0f) return;

        ResetRound(false);
        state = GameState.Aiming;
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
            targetPosition = bowl.position;
            scoreManager.AddPoint();
        }
        else
        {
            targetPosition = new Vector3(
                noodle.position.x,
                chopsticks.transform.position.y + 0.1f,
                noodle.position.z
            );
            scoreManager.ResetScore();
        }
    }

    void ResetRound(bool wasSuccess)
    {
        if (wasSuccess)
        {
            // Success: increase difficulty (with clamps for stability)
            chopsticks.gapSize = Mathf.Max(0.3f, chopsticks.gapSize - gameData.gapDecrease);

            // Add maxSpeed to your gameDataSO for this clamp:
            // public float maxSpeed = 8f;
            chopsticks.speed = Mathf.Min(gameData.maxSpeed, chopsticks.speed + gameData.speedIncrease);
        }
        else
        {
            // Fail: reset to starting values
            chopsticks.gapSize = gameData.startGapSize;
            chopsticks.speed = gameData.startSpeed;
        }

        noodle.position = noodleStartPos;
        chopsticks.UpdateGap();
        chopsticks.ResumeMovement();
    }
}