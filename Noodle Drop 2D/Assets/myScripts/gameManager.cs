using UnityEngine;

public class gameManager : MonoBehaviour
{
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
    private int successStreak = 0;

    public enum GameState { Aiming, Dropping, FailPause }

    void Start()
    {
        // Validate references
        Debug.Assert(chopsticks != null, "Chopsticks reference missing!");
        Debug.Assert(noodle != null, "Noodle reference missing!");
        Debug.Assert(bowl != null, "Bowl reference missing!");
        Debug.Assert(gameData != null, "GameData SO missing!");
        Debug.Assert(events != null, "GameEvents reference missing!");

        noodleStartPos = noodle.position;

        // Initialize chopsticks
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
        bool tappedTouch = Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Began;

        if (!tappedMouse && !tappedTouch) return;

        events.RaiseTap();

        chopsticks.StopMovement();
        targetPosition = bowl.position;
        state = GameState.Dropping;
    }

    void HandleDropMovement()
    {
        noodle.position = Vector3.MoveTowards(
            noodle.position,
            targetPosition,
            gameData.dropSpeed * Time.deltaTime
        );
    }

    void HandleFailPause()
    {
        failTimer -= Time.deltaTime;
        if (failTimer > 0f) return;

        ResetRound(lastDropSuccess);
        state = GameState.Aiming;
    }

    // Called by noodleCollision script on collision
    public void OnNoodleSuccess()
    {
        lastDropSuccess = true;

        failTimer = gameData.successWaitTime;
        state = GameState.FailPause;

        scoreManager.AddPoint();
        events.RaiseSuccess();
    }

    public void OnNoodleFail()
    {
        lastDropSuccess = false;

        failTimer = gameData.failWaitTime;
        state = GameState.FailPause;

        scoreManager.ResetScore();
        events.RaiseFail();
    }

    void ResetRound(bool wasSuccess)
    {
        if (wasSuccess)
        {
            // Increase streak and shrink gap if threshold reached
            successStreak++;
            if (successStreak >= gameData.gapShrinkStreak)
            {
                chopsticks.gapSize = Mathf.Max(gameData.minGapSize, chopsticks.gapSize - gameData.gapDecrease);
                chopsticks.UpdateGapSizeOnly(); // update width without moving sticks
                successStreak = 0;
            }

            // Speed increases every success
            chopsticks.speed = Mathf.Min(gameData.maxSpeed, chopsticks.speed + gameData.speedIncrease);
        }
        else
        {
            // Reset streak on failure
            successStreak = 0;

            chopsticks.gapSize = gameData.startGapSize;
            chopsticks.speed = gameData.startSpeed;

            // Jump sticks to new location after fail
            chopsticks.UpdateGap();
        }

        // Reset noodle
        noodle.position = noodleStartPos;
        noodle.GetComponent<noodleCollision>().ResetCollision();

        // Resume chopsticks movement
        chopsticks.ResumeMovement();

        // Fire events
        events.RaiseReset();
        if (wasSuccess) events.RaiseResetAfterSuccess();
        else events.RaiseResetAfterFail();
    }
}