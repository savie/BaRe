package com.bare.detail;
public final class DetailActionContext {
    private final String packageName;
    private final boolean installed;
    private final boolean hasLocalBackup;
    private final boolean hasCloudBackup;
    public DetailActionContext(String packageName,boolean installed,boolean hasLocalBackup,boolean hasCloudBackup){
        this.packageName=packageName;this.installed=installed;this.hasLocalBackup=hasLocalBackup;this.hasCloudBackup=hasCloudBackup;
    }
    public String getPackageName(){return packageName;} public boolean isInstalled(){return installed;} public boolean hasLocalBackup(){return hasLocalBackup;} public boolean hasCloudBackup(){return hasCloudBackup;}
}