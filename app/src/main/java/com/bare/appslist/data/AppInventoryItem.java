package com.bare.appslist.data;

public final class AppInventoryItem {
    public final String packageName;
    public final String name;
    public final long versionCode;
    public final String versionName;
    public final boolean systemApp;
    public final boolean enabled;
    public final boolean installed;

    public AppInventoryItem(String packageName,String name,long versionCode,String versionName,
            boolean systemApp,boolean enabled,boolean installed){
        if(packageName==null||packageName.isEmpty()) throw new IllegalArgumentException("packageName");
        this.packageName=packageName; this.name=name==null?"":name; this.versionCode=versionCode;
        this.versionName=versionName; this.systemApp=systemApp; this.enabled=enabled; this.installed=installed;
    }
}