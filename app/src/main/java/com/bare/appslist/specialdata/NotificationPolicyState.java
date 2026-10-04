package com.bare.appslist.specialdata;

public final class NotificationPolicyState {
 public static final int MAX_FULL_PAYLOAD_BYTES=4194304,MAX_PACKAGE_PAYLOAD_BYTES=524288;
 private final String packageName,xml; private final boolean valid;
 public NotificationPolicyState(String packageName,String xml,boolean valid){this.packageName=packageName;this.xml=xml;this.valid=valid;}
 public String getPackageName(){return packageName;} public String getXml(){return xml;} public boolean isValid(){return valid;}
 public static NotificationPolicyState capture(String packageName,String fullXml){String x=extractPackagePayload(fullXml,packageName);boolean ok=packageName!=null&&!packageName.isEmpty()&&x!=null&&x.getBytes(java.nio.charset.StandardCharsets.UTF_8).length<=MAX_PACKAGE_PAYLOAD_BYTES;return new NotificationPolicyState(packageName,x,ok);}
 public boolean canRestore(boolean privileged){return valid&&privileged;}
 public static String extractPackagePayload(String xml,String packageName){
   if(xml==null||packageName==null||xml.length()==0)return null;
   byte[] full=xml.getBytes(java.nio.charset.StandardCharsets.UTF_8);if(full.length>MAX_FULL_PAYLOAD_BYTES)return null;
   String escaped=packageName.replace("&","&amp;").replace("\"","&quot;").replace("<","&lt;").replace(">","&gt;");
   String open="<package name=\""+escaped+"\"";int start=xml.indexOf(open);if(start<0)return null;int gt=xml.indexOf('>',start);if(gt<0)return null;
   int close=xml.indexOf("</package>",gt+1);String block=close>=0?xml.substring(start,close+10):xml.substring(start,gt+1);
   String rankingOpen=xml.indexOf("<ranking")>=0?xml.substring(xml.indexOf("<ranking"),Math.max(xml.indexOf('>',xml.indexOf("<ranking"))+1,xml.indexOf("<ranking"))):"";
   if(rankingOpen.isEmpty())return null;
   String out="<?xml version='1.0' encoding='utf-8' standalone='yes' ?>\n<notification-policy version=\"1\">\n"+rankingOpen+"\n"+block+"\n</ranking>\n</notification-policy>\n";
   return out;
 }
}