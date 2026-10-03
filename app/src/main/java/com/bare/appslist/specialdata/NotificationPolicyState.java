package com.bare.appslist.specialdata;

public final class NotificationPolicyState {
 public static final int MAX_XML_BYTES=1048576;
 private final String packageName,xml; private final boolean valid;
 public NotificationPolicyState(String packageName,String xml,boolean valid){this.packageName=packageName;this.xml=xml;this.valid=valid;}
 public String getPackageName(){return packageName;} public String getXml(){return xml;} public boolean isValid(){return valid;}
 public static NotificationPolicyState capture(String packageName,String xml){boolean ok=packageName!=null&&!packageName.isEmpty()&&xml!=null&&xml.getBytes(java.nio.charset.StandardCharsets.UTF_8).length<=MAX_XML_BYTES;return new NotificationPolicyState(packageName,xml,ok);}
 public boolean canRestore(boolean privileged){return valid&&privileged;}
}