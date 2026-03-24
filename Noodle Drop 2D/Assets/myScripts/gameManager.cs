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

    [Header("Events")]
    public gameEvents events;

    [Header("State (Debug)")]
    [SerializeField] private GameState state = GameState.Aiming;

    private Vector3 noodleStartPos;
    private Vector3 targetPosition;
    private bool lastDropSuccess;
    private float failTimer;

    void Start()
    {
        // Stability validation checks
        Debug.Assert(chopsticks != null, "Chopsticks reference missing!");
        Debug.Assert(noodle != null, "Noodle reference missing!");
        Debug.Assert(bowl != null, "Bowl reference missing!");
        Debug.Assert(gameData != null, "GameData SO missing!");
        Debug.Assert(events != null, "GameEvents reference missing!");

        noodleStartPos = noodle.position;

        chopsticks.gapSize = gameData.startGapSize;
        chopsticks.speed = gameData.startSpeed;
        chopsticks.UpdateGap();
        chopsticks.ResumeMovement();

        state = GameState.Aiming;

        events.RaiseRoundStart();
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

        events.RaiseTap();

        chopsticks.StopMovement();
        CheckResult();
        state = GameState.Dropping;
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

            events.RaiseSuccess();
        }
        else
        {
            targetPosition = new Vector3(
                noodle.position.x,
                chopsticks.transform.position.y + 0.1f,
                noodle.position.z
            );

            scoreManager.ResetScore();

            events.RaiseFail();
        }
    }

    void ResetRound(bool wasSuccess)
    {
        if (wasSuccess)
        {
            chopsticks.gapSize = Mathf.Max(0.3f, chopsticks.gapSize - gameData.gapDecrease);
            chopsticks.speed = Mathf.Min(gameData.maxSpeed, chopsticks.speed + gameData.speedIncrease);
        }
        else
        {
            chopsticks.gapSize = gameData.startGapSize;
            chopsticks.speed = gameData.startSpeed;
        }

        noodle.position = noodleStartPos;

        chopsticks.UpdateGap();
        chopsticks.ResumeMovement();

        events.RaiseReset();

        if (wasSuccess) events.RaiseResetAfterSuccess();
        else events.RaiseResetAfterFail();
    }
}