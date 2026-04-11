using System.Collections.Generic;
using UnityEngine;

public class shopManager : MonoBehaviour
{
    public List<shopItem> items;

    void Start()
    {
        LoadItems();
    }

    // find coins //
    public int GetCoins()
    {
        return PlayerPrefs.GetInt("Coins", 0);
    }

    // add the coins //
    public void AddCoins(int amount)
    {
        int coins = GetCoins();
        coins += amount;
        PlayerPrefs.SetInt("Coins", coins);
    }

    // buy the item //
    public void BuyItem(string itemID)
    {
        shopItem item = items.Find(i => i.itemID == itemID);

        if (item == null) return;

        int coins = GetCoins();

        if (item.isUnlocked)
        {
            Debug.Log("Already owned");
            return;
        }

        if (coins >= item.cost)
        {
            coins -= item.cost;
            PlayerPrefs.SetInt("Coins", coins);

            item.isUnlocked = true;
            PlayerPrefs.SetInt(item.itemID, 1);

            Debug.Log("Bought " + itemID);
        }
        else
        {
            Debug.Log("Not enough coins");
        }
    }

    // load unlocked items //
    void LoadItems()
    {
        foreach (shopItem item in items)
        {
            item.isUnlocked = PlayerPrefs.GetInt(item.itemID, 0) == 1;
        }
    }

    // equip the item //
    public void EquipItem(string category, string itemID)
    {
        // categories //
        PlayerPrefs.SetString("Equipped_" + category, itemID);

        Debug.Log("Equipped " + itemID);
    }
    public string GetEquipped(string category)
    {
        return PlayerPrefs.GetString("Equipped_" + category, "default");
    }

    public string selectedItemID;
    public string selectedCategory;
    public GameObject currentSelectedObject;

    public void SelectItem(string itemID, string category)
    {
        selectedItemID = itemID;
        selectedCategory = category;

        Debug.Log("Selected: " + itemID);
    }

    public void SetSelectedObject(GameObject obj)
    {
        // remove highlight //
        if (currentSelectedObject != null)
        {
            currentSelectedObject.transform.localScale = Vector3.one;
        }

        currentSelectedObject = obj;

        // highlight //
        currentSelectedObject.transform.localScale = Vector3.one * 1.1f;
    }

    public void BuySelectedItem()
    {
        if (!string.IsNullOrEmpty(selectedItemID))
        {
            BuyItem(selectedItemID);
        }
    }

    public void EquipSelectedItem()
    {
        if (!string.IsNullOrEmpty(selectedItemID))
        {
            EquipItem(selectedCategory, selectedItemID);
        }
    }
}