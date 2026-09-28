package com.bare.home.data;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class DashboardViewModel extends ViewModel {
    public static final class QuickAction {
        public final int id;
        public final String key;
        public final String title;
        public final int iconResource;

        public QuickAction(int id, String key, String title, int iconResource) {
            this.id = id;
            this.key = key;
            this.title = title;
            this.iconResource = iconResource;
        }
    }

    private final MutableLiveData<Object> storageInfo = new MutableLiveData<>();
    private final MutableLiveData<List<QuickAction>> quickActions =
            new MutableLiveData<>(Collections.emptyList());
    private final MutableLiveData<Boolean> compactShortcuts = new MutableLiveData<>(false);
    private final MutableLiveData<Boolean> showFirebaseDiagnostics = new MutableLiveData<>(false);

    public LiveData<Object> getStorageInfo() { return storageInfo; }
    public LiveData<List<QuickAction>> getQuickActions() { return quickActions; }
    public LiveData<Boolean> getCompactShortcuts() { return compactShortcuts; }
    public LiveData<Boolean> getShowFirebaseDiagnostics() { return showFirebaseDiagnostics; }

    public void setStorageInfo(Object value) { storageInfo.setValue(value); }
    public void setCompactShortcuts(boolean value) { compactShortcuts.setValue(value); }
    public void setShowFirebaseDiagnostics(boolean value) { showFirebaseDiagnostics.setValue(value); }

    /**
     * Reference x92 populates these in this order:
     * Apps, Messages (telephony), Call logs (telephony), Folders,
     * Wallpapers (supported), Wi-Fi.
     */
    public void configureQuickActions(
            boolean telephony,
            boolean wallpaperSupported,
            String apps,
            String messages,
            String callLogs,
            String folders,
            String wallpapers,
            String wifi,
            int appsIcon,
            int messagesIcon,
            int callLogsIcon,
            int foldersIcon,
            int wallpapersIcon,
            int wifiIcon) {

        ArrayList<QuickAction> result = new ArrayList<>();
        result.add(new QuickAction(1, "apps", apps, appsIcon));
        if (telephony) {
            result.add(new QuickAction(2, "messages", messages, messagesIcon));
            result.add(new QuickAction(3, "call_logs", callLogs, callLogsIcon));
        }
        result.add(new QuickAction(6, "folders", folders, foldersIcon));
        if (wallpaperSupported) {
            result.add(new QuickAction(4, "wallpapers", wallpapers, wallpapersIcon));
        }
        result.add(new QuickAction(5, "wifi", wifi, wifiIcon));
        quickActions.setValue(result);
    }
}