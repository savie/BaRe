package com.bare.blacklist.data;

/** Reference-shaped blacklist item. Package name is the stable item identity. */
public final class BlacklistApp {
    public static final int HIDE = 0;
    public static final int NO_DATA = 1;

    private final String name;
    private final String packageName;
    private final int blackListType;
    private boolean installed;

    public BlacklistApp(String name, String packageName, int blackListType) {
        if (name == null) throw new NullPointerException("name");
        if (packageName == null) throw new NullPointerException("packageName");
        this.name = name;
        this.packageName = packageName;
        this.blackListType = normalizeType(blackListType);
        this.installed = true;
    }

    public String getName() { return name; }
    public String getPackageName() { return packageName; }
    public int getBlackListType() { return blackListType; }
    public boolean isInstalled() { return installed; }
    public void setInstalled(boolean installed) { this.installed = installed; }

    public boolean isHide() { return blackListType == HIDE; }
    public boolean isNoData() { return blackListType == NO_DATA; }

    private static int normalizeType(int type) {
        return type == NO_DATA ? NO_DATA : HIDE;
    }
}
