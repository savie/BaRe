package com.bare.home.data;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class DashboardViewModel extends ViewModel {
    public static final class QuickAction {
        public final String key;
        public final String title;
        public QuickAction(String key, String title) {
            this.key = key; this.title = title;
        }
    }

    private final MutableLiveData<List<QuickAction>> quickActions = new MutableLiveData<>(Collections.emptyList());
    private final MutableLiveData<Boolean> compactStorageInfo = new MutableLiveData<>(false);

    public LiveData<List<QuickAction>> getQuickActions() { return quickActions; }
    public LiveData<Boolean> getCompactStorageInfo() { return compactStorageInfo; }

    public void setQuickActions(boolean telephony, boolean wallpaperSupported) {
        ArrayList<QuickAction> result = new ArrayList<>();
        result.add(new QuickAction("apps", "Apps"));
        if (telephony) {
            result.add(new QuickAction("messages", "Messages"));
            result.add(new QuickAction("calls", "Call logs"));
        }
        result.add(new QuickAction("folders", "Folders"));
        if (wallpaperSupported) result.add(new QuickAction("wallpapers", "Wallpapers"));
        result.add(new QuickAction("wifi", "Wi-Fi"));
        quickActions.setValue(result);
    }

    public void setCompactStorageInfo(boolean compact) { compactStorageInfo.setValue(compact); }
}