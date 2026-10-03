package com.bare.wifi;
public final class WifiSensitiveAccessContract {
 public enum Gate{DEVICE_CREDENTIAL,BIOMETRIC,UNAVAILABLE,GRANTED}
 private final Gate gate; public WifiSensitiveAccessContract(Gate g){gate=g;}
 public Gate getGate(){return gate;} public boolean granted(){return gate==Gate.GRANTED;}
 public static WifiSensitiveAccessContract unavailable(){return new WifiSensitiveAccessContract(Gate.UNAVAILABLE);}
 public static WifiSensitiveAccessContract requireDeviceCredential(){return new WifiSensitiveAccessContract(Gate.DEVICE_CREDENTIAL);}
}