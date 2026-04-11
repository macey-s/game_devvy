using UnityEngine;

public class shopButton : MonoBehaviour
{
    public string itemID;
    public string category;
    public shopManager shopManager;

    public void OnBuyClicked()
    {
        shopManager.BuyItem(itemID);
    }

    public void OnEquipClicked()
    {
        shopManager.EquipItem(category, itemID);
    }
}