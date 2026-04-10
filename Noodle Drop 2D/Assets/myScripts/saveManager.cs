using System.IO;
using UnityEngine;

[System.Serializable]
public class PlayerData
{
    public int highScore = 0;
    public int coins = 0;
}

public class saveManager : MonoBehaviour
{
    public static saveManager Instance;
    private string filePath;
    public PlayerData data;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
            filePath = Application.persistentDataPath + "/playerData.json";
            LoadData();
        }
        else
        {
            Destroy(gameObject);
        }
    }

    public void SaveData()
    {
        string json = JsonUtility.ToJson(data);
        File.WriteAllText(filePath, json);
    }

    public void LoadData()
    {
        if (File.Exists(filePath))
        {
            string json = File.ReadAllText(filePath);
            data = JsonUtility.FromJson<PlayerData>(json);
        }
        else
        {
            data = new PlayerData(); 
        }
    }

    public void ResetData()
    {
        data = new PlayerData();
        SaveData();
    }
}