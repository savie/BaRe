package com.bare.appslist.specialdata;

public final class SsaidState {
 private final String packageName,value; private final boolean valid;
 public SsaidState(String packageName,String value,boolean valid){this.packageName=packageName;this.value=value;this.valid=valid;}
 public String getPackageName(){return packageName;} public String getValue(){return value;} public boolean isValid(){return valid;}
 public static SsaidState capture(String packageName,String value){boolean ok=packageName!=null&&!packageName.isEmpty()&&value!=null&&!value.isEmpty();return new SsaidState(packageName,value,ok);}
 public boolean canRestore(boolean privileged){return valid&&privileged;}
}