using UnityEngine;
using UnityEngine.UI;

[System.Serializable]
public class BowlSkin
{
    public string name;
    public Sprite sprite;
    public int price;
    public bool unlocked;
}

public class shopManagerNew : MonoBehaviour
{
    [Header("Skin Data")]
    public BowlSkin[] bowlSkins;
    public int equippedIndex = 0;

    [Header("UI")]
    public GameObject shopPanel;
    public Image bowlImage;
    public Text priceText;
    public Text buttonText;

    int currentIndex = 0;

    [Header("Currency")]
    public int coins;

    void Start()
    {
        LoadData();
        UpdateUI();
    }

    // ---------------- OPEN / CLOSE ----------------
    public void OpenShop()
    {
        shopPanel.SetActive(true);
        UpdateUI();
    }

    public void CloseShop()
    {
        shopPanel.SetActive(false);
    }

    // ---------------- NAVIGATION ----------------
    public void NextSkin()
    {
        currentIndex++;
        if (currentIndex >= bowlSkins.Length)
            currentIndex = 0;

        UpdateUI();
    }

    public void PrevSkin()
    {
        currentIndex--;
        if (currentIndex < 0)
            currentIndex = bowlSkins.Length - 1;

        UpdateUI();
    }

    // ---------------- BUY / EQUIP ----------------
    public void OnActionButton()
    {
        BowlSkin skin = bowlSkins[currentIndex];

        if (!skin.unlocked)
        {
            if (coins >= skin.price)
            {
                coins -= skin.price;
                skin.unlocked = true;
            }
        }
        else
        {
            equippedIndex = currentIndex;
        }

        SaveData();
        UpdateUI();
    }

    // ---------------- UI UPDATE ----------------
    void UpdateUI()
    {
        BowlSkin skin = bowlSkins[currentIndex];

        bowlImage.sprite = skin.sprite;

        if (skin.unlocked)
        {
            if (currentIndex == equippedIndex)
                buttonText.text = "Equipped";
            else
                buttonText.text = "Equip";

            priceText.text = "";
        }
        else
        {
            buttonText.text = "Buy";
            priceText.text = skin.price + " coins";
        }
    }

    // ---------------- SAVE / LOAD ----------------
    void SaveData()
    {
        PlayerPrefs.SetInt("Coins", coins);
        PlayerPrefs.SetInt("Equipped", equippedIndex);

        for (int i = 0; i < bowlSkins.Length; i++)
        {
            PlayerPrefs.SetInt("Skin_" + i, bowlSkins[i].unlocked ? 1 : 0);
        }
    }

    void LoadData()
    {
        coins = PlayerPrefs.GetInt("Coins", coins);
        equippedIndex = PlayerPrefs.GetInt("Equipped", 0);

        for (int i = 0; i < bowlSkins.Length; i++)
        {
            bowlSkins[i].unlocked = PlayerPrefs.GetInt("Skin_" + i, i == 0 ? 1 : 0) == 1;
        }
    }

    // ---------------- GET EQUIPPED ----------------
    public Sprite GetEquippedBowl()
    {
        return bowlSkins[equippedIndex].sprite;
    }
}