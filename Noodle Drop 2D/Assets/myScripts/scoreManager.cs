using TMPro;
using UnityEngine;

public class scoreManager : MonoBehaviour
{
    [Header("UI")]
    public TMP_Text scoreText;
    public TMP_Text highScoreText;
    public TMP_Text coinsText;

    [Header("World References")]
    public Transform bowlPosition;
    public GameObject coinPopupPrefab;

    [Header("Coin Settings")]
    [Range(0f, 1f)]
    public float coinChancePerPoint = 0.3f;

    private int score = 0;
    private int highScore = 0;
    private int coins = 0;

    private bool hasStartedScoring = false;

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.R))
        {
            PlayerPrefs.DeleteAll();
            PlayerPrefs.Save();

            Debug.Log("data reset");

            coins = 0;
            highScore = 0;
            score = 0;
            hasStartedScoring = false;

            UpdateCoinUI();
            UpdateHighScoreUI();
            UpdateScoreUI();
        }
    }
    private void Start()
    {
        // load player data //
        highScore = PlayerPrefs.GetInt("HighScore", 0);
        coins = PlayerPrefs.GetInt("Coins", 0);

        // high score UI //
        if (highScoreText != null)
        {
            if (highScore > 0)
            {
                highScoreText.gameObject.SetActive(true);
                highScoreText.text = " " + highScore;
            }
            else
            {
                highScoreText.gameObject.SetActive(false);
            }
        }

        // coin UI //
        if (coinsText != null)
        {
            coinsText.gameObject.SetActive(true);
            coinsText.text = coins + "c";
        }

        if (scoreText != null)
        {
            scoreText.text = "";
        }

        hasStartedScoring = false;
    }

    public void AddPoint()
    {
        score++;

        if (!hasStartedScoring)
        {
            hasStartedScoring = true;

            if (scoreText != null)
                scoreText.gameObject.SetActive(true);
        }

        // coin random //
        if (Random.value < coinChancePerPoint)
        {
            coins++;

            PlayerPrefs.SetInt("Coins", coins);
            PlayerPrefs.Save();

            UpdateCoinUI();
            SpawnCoinPopup(1);
        }

        UpdateScoreUI();
    }

    public void ResetScore()
    {
        if (score > highScore)
        {
            highScore = score;

            PlayerPrefs.SetInt("HighScore", highScore);
            PlayerPrefs.Save();

            UpdateHighScoreUI();
        }

        score = 0;
        UpdateScoreUI();
    }

    // UI //

    private void UpdateScoreUI()
    {
        if (scoreText == null) return;

        if (hasStartedScoring)
            scoreText.text = " " + score;
        else
            scoreText.text = "";
    }

    private void UpdateHighScoreUI()
    {
        if (highScoreText == null) return;

        highScoreText.gameObject.SetActive(true);
        highScoreText.text = " " + highScore;
    }

    private void UpdateCoinUI()
    {
        if (coinsText == null) return;

        coinsText.text = coins + "c";
    }

    // coin float up //
    private void SpawnCoinPopup(int amount)
    {
        if (coinPopupPrefab == null || bowlPosition == null) return;

        GameObject popup = Instantiate(
            coinPopupPrefab,
            bowlPosition.position,
            Quaternion.identity
        );

        coinPopup cp = popup.GetComponent<coinPopup>();
        if (cp != null)
        {
            cp.SetValue(amount);
        }
    }
}