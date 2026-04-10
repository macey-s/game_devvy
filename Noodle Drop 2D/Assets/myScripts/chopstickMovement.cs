using UnityEngine;

public class chopstickMovement : MonoBehaviour
{
    [Header("movement settings")]
    public float moveRange = 3f;
    public float speed = 2f;

    [Header("references")]
    public Transform leftStick;
    public Transform rightStick;

    [Header("gap settings")]
    public float gapSize = 11f;

    private Vector3 startPos;
    private bool isMoving = true;

    void Start()
    {
        startPos = transform.position;
        UpdateGap(); 
    }

    void Update()
    {
        if (!isMoving) return;

        float xOffset = Mathf.PingPong(Time.time * speed, moveRange * 2) - moveRange;
        transform.position = new Vector3(startPos.x + xOffset,
                                         startPos.y,
                                         startPos.z);
    }

    // to pause //
    public void StopMovement()
    {
        isMoving = false;
    }

    // to resume //
    public void ResumeMovement()
    {
        isMoving = true;
    }

    // full reset on fail //
    public void UpdateGap()
    {
        leftStick.localPosition = new Vector3(-gapSize / 2f, 0, 0);
        rightStick.localPosition = new Vector3(gapSize / 2f, 0, 0);

        transform.position = startPos;
    }

    // update gap on success //
    public void UpdateGapSizeOnly()
    {
        leftStick.localPosition = new Vector3(-gapSize / 2f, 0, 0);
        rightStick.localPosition = new Vector3(gapSize / 2f, 0, 0);
    }
}