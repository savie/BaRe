package com.bare.wifi;
public final class WifiCredentialState {
 private final String ssid,credential; private final boolean available;
 public WifiCredentialState(String ssid,String credential,boolean available){this.ssid=ssid;this.credential=credential;this.available=available;}
 public String getSsid(){return ssid;} public String getCredential(){return credential;} public boolean isAvailable(){return available;}
}