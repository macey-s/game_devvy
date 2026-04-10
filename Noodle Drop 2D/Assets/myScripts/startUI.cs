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

        // hide menu when playing //
        events.OnTap += Hide;
    }

    void OnDisable()
    {
        if (events == null) return;

        events.OnTap -= Hide;
        events.OnResetAfterFail -= Show;
    }

    void Start()
    {
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