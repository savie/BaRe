package com.bare.appslist.data;

public final class FavoriteApp {
    private final String packageName;
    private final String name;

    public FavoriteApp(String packageName, String name) {
        if (packageName == null) throw new NullPointerException("packageName");
        if (name == null) throw new NullPointerException("name");
        this.packageName = packageName;
        this.name = name;
    }

    public String getPackageName() {
        return packageName;
    }

    public String getName() {
        return name;
    }
}
