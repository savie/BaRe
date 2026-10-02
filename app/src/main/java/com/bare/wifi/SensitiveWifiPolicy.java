package com.bare.wifi;
public final class SensitiveWifiPolicy {
 private final boolean credentialGate,enterpriseDataAllowed;
 public SensitiveWifiPolicy(boolean credentialGate,boolean enterpriseDataAllowed){this.credentialGate=credentialGate;this.enterpriseDataAllowed=enterpriseDataAllowed;}
 public boolean requiresCredential(){return credentialGate;} public boolean isEnterpriseDataAllowed(){return enterpriseDataAllowed;}
}