package com.bare.appslist.data;

public final class AppInventoryItem {
    public final String packageName;
    public final String name;
    public final String versionName;
    public final Long versionCode;
    public final boolean enabled;
    public final boolean launchable;
    public final boolean bundled;
    public final boolean installed;
    public final boolean cloudApp;
    public final boolean favorite;

    public AppInventoryItem(String packageName, String name, String versionName, Long versionCode,
            boolean enabled, boolean launchable, boolean bundled, boolean installed,
            boolean cloudApp, boolean favorite) {
        if (packageName == null || packageName.isEmpty()) throw new IllegalArgumentException("packageName");
        if (name == null) throw new IllegalArgumentException("name");
        this.packageName = packageName;
        this.name = name;
        this.versionName = versionName;
        this.versionCode = versionCode;
        this.enabled = enabled;
        this.launchable = launchable;
        this.bundled = bundled;
        this.installed = installed;
        this.cloudApp = cloudApp;
        this.favorite = favorite;
    }

    public String getItemId() { return packageName; }
}