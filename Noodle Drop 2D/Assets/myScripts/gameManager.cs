using UnityEngine;

public class gameManager : MonoBehaviour
{
    [Header("references")]
    public chopstickMovement chopsticks;
    public Transform noodle;
    public Transform bowl;
    public scoreManager scoreManager;

    [Header("data")]
    public gameDataSO gameData;

    [Header("events")]
    public gameEvents events;

    [Header("state (Debug)")]
    [SerializeField] private GameState state = GameState.Aiming;

    private Vector3 noodleStartPos;
    private Vector3 targetPosition;
    private bool lastDropSuccess;
    private float failTimer;
    private int successStreak = 0;

    public enum GameState { Aiming, Dropping, FailPause }

    void Start()
    {
        // validate references //
        Debug.Assert(chopsticks != null, "reference missing");
        Debug.Assert(noodle != null, "reference missing");
        Debug.Assert(bowl != null, "reference missing");
        Debug.Assert(gameData != null, "reference missing");
        Debug.Assert(events != null, "reference missing");

        noodleStartPos = noodle.position;

        // set chopsticks //
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

    // handle player input //
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

    // handle dropping //
    void HandleDropMovement()
    {
        noodle.position = Vector3.MoveTowards(
            noodle.position,
            targetPosition,
            gameData.dropSpeed * Time.deltaTime
        );
    }

    // handle the failiure pause //
    void HandleFailPause()
    {
        failTimer -= Time.deltaTime;
        if (failTimer > 0f) return;

        ResetRound(lastDropSuccess);
        state = GameState.Aiming;
    }

    // handle the success shift //
    public void OnNoodleSuccess()
    {
        lastDropSuccess = true;

        failTimer = gameData.successWaitTime;
        state = GameState.FailPause;

        scoreManager.AddPoint();
        events.RaiseSuccess();
    }

    // handle the reset after fail //
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
            // increase difficulty //
            successStreak++;
            if (successStreak >= gameData.gapShrinkStreak)
            {
                chopsticks.gapSize = Mathf.Max(gameData.minGapSize, chopsticks.gapSize - gameData.gapDecrease);
                chopsticks.UpdateGapSizeOnly();
                successStreak = 0;
            }
            
            chopsticks.speed = Mathf.Min(gameData.maxSpeed, chopsticks.speed + gameData.speedIncrease);
        }
        else
        {
            // reset the streak when fail //
            successStreak = 0;

            chopsticks.gapSize = gameData.startGapSize;
            chopsticks.speed = gameData.startSpeed;

            chopsticks.UpdateGap();
        }

        // reset noodle //
        noodle.position = noodleStartPos;
        noodle.GetComponent<noodleCollision>().ResetCollision();

        // resume movement //
        chopsticks.ResumeMovement();

        // set events //
        events.RaiseReset();
        if (wasSuccess) events.RaiseResetAfterSuccess();
        else events.RaiseResetAfterFail();
    }
}