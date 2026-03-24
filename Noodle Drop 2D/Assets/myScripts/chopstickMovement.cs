using UnityEngine;

public class chopstickMovement : MonoBehaviour
{
    public float moveRange = 3f;
    public float speed = 2f;

    public Transform leftStick;
    public Transform rightStick;
    public float gapSize = 1.5f;

    private Vector3 startPos;
    private bool isMoving = true;

    void Start()
    {
        startPos = transform.position;
        UpdateGap();
    }

    void Update()
    {
        UpdateGap();

        if (!isMoving) return;

        float xOffset = Mathf.PingPong(Time.time * speed, moveRange * 2) - moveRange;
        transform.position = new Vector3(startPos.x + xOffset,
                                         startPos.y,
                                         startPos.z);

    }

    public void StopMovement()
    {
        isMoving = false;
    }

    public void ResumeMovement()
    {
        isMoving = true;
    }

    public void UpdateGap()
    {
        leftStick.localPosition = new Vector3(-gapSize / 2f, 0, 0);
        rightStick.localPosition = new Vector3(gapSize / 2f, 0, 0);
    }
}
