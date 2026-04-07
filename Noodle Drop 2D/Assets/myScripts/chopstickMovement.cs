using UnityEngine;

public class chopstickMovement : MonoBehaviour
{
    [Header("Movement Settings")]
    public float moveRange = 3f;
    public float speed = 2f;

    [Header("References")]
    public Transform leftStick;
    public Transform rightStick;

    [Header("Gap Settings")]
    public float gapSize = 11f;

    private Vector3 startPos;
    private bool isMoving = true;

    void Start()
    {
        startPos = transform.position;
        UpdateGap(); // initial setup
    }

    void Update()
    {
        if (!isMoving) return;

        float xOffset = Mathf.PingPong(Time.time * speed, moveRange * 2) - moveRange;
        transform.position = new Vector3(startPos.x + xOffset,
                                         startPos.y,
                                         startPos.z);
    }

    // Call this to pause movement
    public void StopMovement()
    {
        isMoving = false;
    }

    // Call this to resume movement
    public void ResumeMovement()
    {
        isMoving = true;
    }

    // Full reset: updates gap width AND jumps parent to start position (used on fail)
    public void UpdateGap()
    {
        leftStick.localPosition = new Vector3(-gapSize / 2f, 0, 0);
        rightStick.localPosition = new Vector3(gapSize / 2f, 0, 0);

        // Jump parent to start position for fail reset
        transform.position = startPos;
    }

    // Only update gap width without moving the sticks (used on success)
    public void UpdateGapSizeOnly()
    {
        leftStick.localPosition = new Vector3(-gapSize / 2f, 0, 0);
        rightStick.localPosition = new Vector3(gapSize / 2f, 0, 0);
    }
}