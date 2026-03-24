using System;
using UnityEngine;

[CreateAssetMenu(menuName = "Game/Game Events")]
public class gameEvents : ScriptableObject
{
    public event Action OnRoundStart;
    public event Action OnTap;
    public event Action OnSuccess;
    public event Action OnFail;
    public event Action OnReset;

    public event Action OnResetAfterFail;
    public event Action OnResetAfterSuccess;

    public void RaiseRoundStart() => OnRoundStart?.Invoke();
    public void RaiseTap() => OnTap?.Invoke();
    public void RaiseSuccess() => OnSuccess?.Invoke();
    public void RaiseFail() => OnFail?.Invoke();
    public void RaiseReset() => OnReset?.Invoke();

    public void RaiseResetAfterFail() => OnResetAfterFail?.Invoke();
    public void RaiseResetAfterSuccess() => OnResetAfterSuccess?.Invoke();
}