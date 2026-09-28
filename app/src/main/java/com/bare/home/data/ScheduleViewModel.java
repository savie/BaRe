package com.bare.home.data;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ScheduleViewModel extends ViewModel {
    public static final class ScheduleItem {
        public final String title;
        public final String summary;
        public ScheduleItem(String title, String summary) {
            this.title = title; this.summary = summary;
        }
    }

    private final MutableLiveData<Boolean> enabled = new MutableLiveData<>(false);
    private final MutableLiveData<List<ScheduleItem>> schedules =
            new MutableLiveData<>(Collections.emptyList());

    public LiveData<Boolean> getEnabled() { return enabled; }
    public LiveData<List<ScheduleItem>> getSchedules() { return schedules; }

    public void setEnabled(boolean value) { enabled.setValue(value); }
    public void setSchedules(List<ScheduleItem> value) {
        schedules.setValue(new ArrayList<>(value));
    }
}