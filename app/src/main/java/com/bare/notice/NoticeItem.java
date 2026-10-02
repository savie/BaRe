package com.bare.notice;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;

import java.net.URL;

public final class NoticeItem {
    public enum Priority { LOW, NORMAL, HIGH }

    public final String id;
    public final String title;
    public final String subtitle;
    public final String message;
    public final Integer minAppVersion;
    public final Integer maxAppVersion;
    public final Integer minSdkVersion;
    public final Integer maxSdkVersion;
    public final Priority priority;
    public final boolean active;
    public final boolean testing;

    public NoticeItem(
            String id, String title, String subtitle, String message,
            Integer minAppVersion, Integer maxAppVersion,
            Integer minSdkVersion, Integer maxSdkVersion,
            Priority priority, boolean active, boolean testing) {
        this.id = id;
        this.title = title == null ? "" : title;
        this.subtitle = subtitle == null ? "" : subtitle;
        this.message = message == null ? "" : message;
        this.minAppVersion = minAppVersion;
        this.maxAppVersion = maxAppVersion;
        this.minSdkVersion = minSdkVersion;
        this.maxSdkVersion = maxSdkVersion;
        this.priority = priority == null ? Priority.LOW : priority;
        this.active = active;
        this.testing = testing;
    }

    public String getSubtitle() {
        return subtitle.trim().isEmpty() ? message : subtitle;
    }

    public boolean isLinkOnly() {
        try {
            new URL(message);
            return true;
        } catch (Exception ignored) {
            return false;
        }
    }

    public boolean shouldShowToUser(Context context, boolean includeSeen) {
        if (!includeSeen && isSeen(context)) return false;
        if (testing || !active || message.trim().isEmpty()) return false;

        if (minSdkVersion != null && Build.VERSION.SDK_INT < minSdkVersion) return false;
        if (maxSdkVersion != null && Build.VERSION.SDK_INT > maxSdkVersion) return false;

        try {
            long versionCode = context.getPackageManager()
                    .getPackageInfo(context.getPackageName(), 0).getLongVersionCode();
            if (minAppVersion != null && versionCode < minAppVersion) return false;
            if (maxAppVersion != null && versionCode > maxAppVersion) return false;
        } catch (Exception ignored) {
            return false;
        }

        return true;
    }

    public void markSeen(Context context) {
        context.getSharedPreferences("notice_state", Context.MODE_PRIVATE)
                .edit().putBoolean("notice_seen_id_" + id, true).apply();
    }

    private boolean isSeen(Context context) {
        SharedPreferences prefs = context.getSharedPreferences(
                "notice_state", Context.MODE_PRIVATE);
        return prefs.getBoolean("notice_seen_id_" + id, false);
    }
}
