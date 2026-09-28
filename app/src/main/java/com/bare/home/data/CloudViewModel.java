package com.bare.home.data;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

public final class CloudViewModel extends ViewModel {
    public enum State {
        LOADING,
        DRIVE_CONNECTED,
        DRIVE_NOT_CONNECTED,
        NETWORK_ERROR,
        TEMP_CONNECTION_ERROR
    }

    private final MutableLiveData<State> state = new MutableLiveData<>(State.LOADING);
    private final MutableLiveData<Boolean> busy = new MutableLiveData<>(false);
    private final MutableLiveData<String> accountId = new MutableLiveData<>("");
    private final MutableLiveData<String> cloudFolderName = new MutableLiveData<>("");
    private final MutableLiveData<Boolean> manualDeleteWarning = new MutableLiveData<>(true);

    public LiveData<State> getState() { return state; }
    public LiveData<Boolean> getBusy() { return busy; }
    public LiveData<String> getAccountId() { return accountId; }
    public LiveData<String> getCloudFolderName() { return cloudFolderName; }
    public LiveData<Boolean> getManualDeleteWarning() { return manualDeleteWarning; }

    public void setState(State value) { state.setValue(value); }
    public void setBusy(boolean value) { busy.setValue(value); }
    public void setAccountId(String value) { accountId.setValue(value == null ? "" : value); }
    public void setCloudFolderName(String value) { cloudFolderName.setValue(value == null ? "" : value); }
    public void setManualDeleteWarning(boolean value) { manualDeleteWarning.setValue(value); }
}