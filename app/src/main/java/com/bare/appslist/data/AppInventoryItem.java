package com.bare.appslist.data;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class AppInventoryItem {
    public final String packageName,name,versionName;
    public final Long versionCode;
    public final boolean enabled,launchable,bundled,installed,cloudApp,favorite,hasBackup;
    public final long dateInstalled,dateUpdated,dateBackup,backupSizeBytes,appSizeBytes,dateUsed;
    public final List<String> labelIds; public final String locale;

    public AppInventoryItem(String packageName,String name,String versionName,Long versionCode,
            boolean enabled,boolean launchable,boolean bundled,boolean installed,boolean cloudApp,boolean favorite) {
        this(packageName,name,versionName,versionCode,enabled,launchable,bundled,installed,cloudApp,favorite,
                false,0,0,0,0,0,0,Collections.emptyList());
    }
    public AppInventoryItem(String packageName,String name,String versionName,Long versionCode,
            boolean enabled,boolean launchable,boolean bundled,boolean installed,boolean cloudApp,boolean favorite,
            boolean hasBackup,long dateInstalled,long dateUpdated,long dateBackup,long backupSizeBytes,
            long appSizeBytes,long dateUsed,List<String> labelIds) {
        if(packageName==null||packageName.isEmpty())throw new IllegalArgumentException("packageName");
        if(name==null)throw new IllegalArgumentException("name");
        this.packageName=packageName; this.name=name; this.versionName=versionName; this.versionCode=versionCode;
        this.enabled=enabled; this.launchable=launchable; this.bundled=bundled; this.installed=installed;
        this.cloudApp=cloudApp; this.favorite=favorite; this.hasBackup=hasBackup;
        this.dateInstalled=Math.max(0,dateInstalled); this.dateUpdated=Math.max(0,dateUpdated);
        this.dateBackup=Math.max(0,dateBackup); this.backupSizeBytes=Math.max(0,backupSizeBytes);
        this.appSizeBytes=Math.max(0,appSizeBytes); this.dateUsed=Math.max(0,dateUsed);
        this.labelIds=labelIds==null?Collections.emptyList():Collections.unmodifiableList(new ArrayList<>(labelIds)); this.locale=java.util.Locale.getDefault().toLanguageTag();
    }
    public String getItemId(){return packageName;}
}