using UnityEngine;
using TMPro;

public class startUI : MonoBehaviour
{
    [Header("References")]
    public gameEvents events;
    public TMP_Text titleText;
    public TMP_Text tapToStartText;

    void OnEnable()
    {
        if (events == null) return;

        // Hide when the player starts playing
        events.OnTap += Hide;

        // Show ONLY after a fail reset (not after success)
        events.OnResetAfterFail += Show;
    }

    void OnDisable()
    {
        if (events == null) return;

        events.OnTap -= Hide;
        events.OnResetAfterFail -= Show;
    }

    void Start()
    {
        // Show at app start / first load
        Show();
    }

    void Show()
    {
        if (titleText != null) titleText.gameObject.SetActive(true);
        if (tapToStartText != null) tapToStartText.gameObject.SetActive(true);
    }

    void Hide()
    {
        if (titleText != null) titleText.gameObject.SetActive(false);
        if (tapToStartText != null) tapToStartText.gameObject.SetActive(false);
    }
}