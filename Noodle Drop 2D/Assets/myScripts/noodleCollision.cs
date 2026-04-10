using UnityEngine;

public class noodleCollision : MonoBehaviour
{
    public gameManager manager;

    private bool hasResolved = false;

    // if noodle collides with bowl or sticks //
    private void OnTriggerEnter2D(Collider2D other)
    {
        if (hasResolved) return;

        if (other.CompareTag("Bowl"))
        {
            hasResolved = true;
            manager.OnNoodleSuccess();
        }
        else if (other.CompareTag("Chopstick"))
        {
            hasResolved = true;
            manager.OnNoodleFail();
        }
    }

    // reset //
    public void ResetCollision()
    {
        hasResolved = false;
    }
}