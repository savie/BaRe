package com.bare.appslist.specialdata;
public final class SsaidState {
 private final String packageName,value; private final boolean valid;
 public SsaidState(String packageName,String value,boolean valid){this.packageName=packageName;this.value=value;this.valid=valid;}
 public String getPackageName(){return packageName;} public String getValue(){return value;} public boolean isValid(){return valid;}
}