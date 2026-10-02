package com.bare.appslist.specialdata;
public final class NotificationPolicyState {
 private final String packageName,xml; private final boolean valid;
 public NotificationPolicyState(String packageName,String xml,boolean valid){this.packageName=packageName;this.xml=xml;this.valid=valid;}
 public String getPackageName(){return packageName;} public String getXml(){return xml;} public boolean isValid(){return valid;}
}