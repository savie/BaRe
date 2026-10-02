package com.bare.appslist.specialdata;
public final class SpecialPermissionState {
 private final String packageName; private final String token; private final boolean granted;
 public SpecialPermissionState(String packageName,String token,boolean granted){this.packageName=packageName;this.token=token;this.granted=granted;}
 public String getPackageName(){return packageName;} public String getToken(){return token;} public boolean isGranted(){return granted;}
}