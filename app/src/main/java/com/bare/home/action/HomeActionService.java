package com.bare.home.action;

/** Action dispatch boundary. UI/controllers call this; concrete Activity navigation is injected. */
public final class HomeActionService {
    private final Navigator navigator;

    public HomeActionService(Navigator navigator) {
        this.navigator = navigator;
    }

    public boolean dispatch(int actionId) {
        HomeAction action = HomeAction.fromId(actionId);
        if (action == null) return false;
        switch (action) {
            case APPS: navigator.openApps(); break;
            case MESSAGES: navigator.openMessages(); break;
            case CALL_LOGS: navigator.openCallLogs(); break;
            case WALLPAPERS: navigator.openWallpapers(); break;
            case WIFI: navigator.openWifi(); break;
            case FOLDERS: navigator.openFolders(); break;
        }
        return true;
    }

    public interface Navigator {
        void openApps();
        void openMessages();
        void openCallLogs();
        void openWallpapers();
        void openWifi();
        void openFolders();
    }
}
