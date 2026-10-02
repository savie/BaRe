package com.bare.appslist.discovery;
public final class AppBackupDiscovery {
    private final String packageName; private final boolean localAvailable; private final boolean cloudAvailable;
    public AppBackupDiscovery(String packageName,boolean localAvailable,boolean cloudAvailable){this.packageName=packageName;this.localAvailable=localAvailable;this.cloudAvailable=cloudAvailable;}
    public String getPackageName(){return packageName;} public boolean isLocalAvailable(){return localAvailable;} public boolean isCloudAvailable(){return cloudAvailable;}
}