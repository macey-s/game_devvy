using UnityEngine;

public class shopButton : MonoBehaviour
{
    public string itemID;
    public string category;
    public shopManager shopManager;

    void OnMouseDown()
    {
        shopManager.SelectItem(itemID, category);

        shopManager.SetSelectedObject(gameObject);
    }
}