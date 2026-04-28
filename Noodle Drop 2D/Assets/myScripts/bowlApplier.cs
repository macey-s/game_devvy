using UnityEngine;

public class bowlApplier : MonoBehaviour
{
    public shopManagerNew shopManager;
    public SpriteRenderer bowlRenderer;

    void Start()
    {
        bowlRenderer.sprite = shopManager.GetEquippedBowl();
    }
}