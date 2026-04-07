using UnityEngine;

public class noodleCollision : MonoBehaviour
{
    public gameManager manager;

    private bool hasResolved = false;

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

    public void ResetCollision()
    {
        hasResolved = false;
    }
}