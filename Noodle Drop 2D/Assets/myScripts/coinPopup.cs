using TMPro;
using UnityEngine;

public class coinPopup : MonoBehaviour
{
    public TMP_Text text;

    public float floatSpeed = 1.5f;
    public float lifetime = 1f;

    private float timer;

    void Start()
    {
        Destroy(gameObject, lifetime);
    }

    void Update()
    {
        // float upward //
        transform.position += Vector3.up * floatSpeed * Time.deltaTime;

        timer += Time.deltaTime;

        if (text != null)
        {
            Color c = text.color;
            c.a = Mathf.Lerp(1f, 0f, timer / lifetime);
            text.color = c;
        }
    }

    public void SetValue(int amount)
    {
        if (text != null)
            text.text = "+" + amount;
    }
}