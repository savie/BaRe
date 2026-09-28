package com.bare.home.service;

import com.bare.home.data.DashboardViewModel;

/** Builds dashboard quick actions from device capabilities; no UI construction belongs here. */
public final class DashboardService {
    public void refreshQuickActions(DashboardViewModel model, Capabilities c, Titles titles, Icons icons) {
        model.configureQuickActions(c.telephony, c.wallpaperSupported,
                titles.apps, titles.messages, titles.callLogs, titles.folders, titles.wallpapers, titles.wifi,
                icons.apps, icons.messages, icons.callLogs, icons.folders, icons.wallpapers, icons.wifi);
    }

    public static final class Capabilities {
        public final boolean telephony;
        public final boolean wallpaperSupported;
        public Capabilities(boolean telephony, boolean wallpaperSupported) {
            this.telephony = telephony;
            this.wallpaperSupported = wallpaperSupported;
        }
    }

    public static final class Titles {
        public final String apps, messages, callLogs, folders, wallpapers, wifi;
        public Titles(String apps, String messages, String callLogs, String folders, String wallpapers, String wifi) {
            this.apps = apps; this.messages = messages; this.callLogs = callLogs;
            this.folders = folders; this.wallpapers = wallpapers; this.wifi = wifi;
        }
    }

    public static final class Icons {
        public final int apps, messages, callLogs, folders, wallpapers, wifi;
        public Icons(int apps, int messages, int callLogs, int folders, int wallpapers, int wifi) {
            this.apps = apps; this.messages = messages; this.callLogs = callLogs;
            this.folders = folders; this.wallpapers = wallpapers; this.wifi = wifi;
        }
    }
}
