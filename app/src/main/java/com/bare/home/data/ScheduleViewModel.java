package com.bare.home.data;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ScheduleViewModel extends ViewModel {
    public enum Type {
        APP_CONFIG(101),
        APPS_LABELS(102),
        APPS_QUICK_ACTIONS(103),
        MESSAGES(201),
        CALL_LOGS(301),
        WALLPAPERS(401),
        WIFI(501),
        FOLDERS(601);

        public final int constant;
        Type(int constant) { this.constant = constant; }
    }

    public static final class ScheduleItem {
        public final String id;
        public final Type type;
        public final String title;
        public final String summary;

        public ScheduleItem(String id, Type type, String title, String summary) {
            this.id = id;
            this.type = type;
            this.title = title;
            this.summary = summary;
        }
    }

    private final MutableLiveData<Boolean> enabled = new MutableLiveData<>(false);
    private final MutableLiveData<Integer> startHour = new MutableLiveData<>(3);
    private final MutableLiveData<Integer> startMinute = new MutableLiveData<>(0);
    private final MutableLiveData<Integer> batteryRequirement = new MutableLiveData<>(0);
    private final MutableLiveData<Integer> batteryPercentRequirement = new MutableLiveData<>(50);
    private final MutableLiveData<String> globalError = new MutableLiveData<>();
    private final MutableLiveData<List<ScheduleItem>> schedules =
            new MutableLiveData<>(Collections.emptyList());

    public LiveData<Boolean> getEnabled() { return enabled; }
    public LiveData<Integer> getStartHour() { return startHour; }
    public LiveData<Integer> getStartMinute() { return startMinute; }
    public LiveData<Integer> getBatteryRequirement() { return batteryRequirement; }
    public LiveData<Integer> getBatteryPercentRequirement() { return batteryPercentRequirement; }
    public LiveData<String> getGlobalError() { return globalError; }
    public LiveData<List<ScheduleItem>> getSchedules() { return schedules; }

    public void setEnabled(boolean value) { enabled.setValue(value); }
    public void setStartTime(int hour, int minute) {
        startHour.setValue(hour);
        startMinute.setValue(minute);
    }
    public void setBatteryRequirement(int value) { batteryRequirement.setValue(value); }
    public void setBatteryPercentRequirement(int value) { batteryPercentRequirement.setValue(value); }
    public void setGlobalError(String value) { globalError.setValue(value); }
    public void setSchedules(List<ScheduleItem> value) {
        schedules.setValue(value == null ? Collections.emptyList() : new ArrayList<>(value));
    }
}