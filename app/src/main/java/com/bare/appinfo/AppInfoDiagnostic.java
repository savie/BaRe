package com.bare.appinfo;
public final class AppInfoDiagnostic {
 private final String packageName,name,versionName,sourceDir,dataDir; private final int versionCode,uid;
 public AppInfoDiagnostic(String packageName,String name,String versionName,int versionCode,String sourceDir,String dataDir,int uid){this.packageName=packageName;this.name=name;this.versionName=versionName;this.versionCode=versionCode;this.sourceDir=sourceDir;this.dataDir=dataDir;this.uid=uid;}
 public String getPackageName(){return packageName;} public String getName(){return name;} public String getVersionName(){return versionName;} public int getVersionCode(){return versionCode;} public String getSourceDir(){return sourceDir;} public String getDataDir(){return dataDir;} public int getUid(){return uid;}
}