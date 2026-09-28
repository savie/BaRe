package com.bare.home.data;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

public final class CloudViewModel extends ViewModel {
    public enum State { LOADING, READY, NO_INTERNET, CONNECTION_FAILED }

    private final MutableLiveData<State> state = new MutableLiveData<>(State.LOADING);
    public LiveData<State> getState() { return state; }
    public void setState(State value) { state.setValue(value); }
}