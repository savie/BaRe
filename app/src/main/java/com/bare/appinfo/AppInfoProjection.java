package com.bare.appinfo;
public final class AppInfoProjection {
    private final String packageName; private final String name; private final String versionName; private final Long versionCode; private final int uid;
    public AppInfoProjection(String packageName,String name,String versionName,Long versionCode,int uid){this.packageName=packageName;this.name=name;this.versionName=versionName;this.versionCode=versionCode;this.uid=uid;}
    public String getPackageName(){return packageName;} public String getName(){return name;} public String getVersionName(){return versionName;} public Long getVersionCode(){return versionCode;} public int getUid(){return uid;}
}