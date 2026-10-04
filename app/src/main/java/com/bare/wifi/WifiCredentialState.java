package com.bare.wifi;

import java.util.BitSet;

public final class WifiCredentialState {
    private final String ssid;
    private final String credential;
    private final boolean available;
    private final boolean hiddenSsid;
    private final BitSet allowedKeyManagement;
    private final BitSet allowedProtocols;
    private final BitSet allowedPairwiseCiphers;
    private final BitSet allowedGroupCiphers;
    private final String eapMethod;
    private final String phase2Method;
    private final String identity;
    private final String anonymousIdentity;
    private final String enterprisePassword;
    private final String caCertificate;

    public WifiCredentialState(String ssid, String credential, boolean available) {
        this(ssid, credential, available, false, null, null, null, null,
                null, null, null, null, null, null);
    }

    public WifiCredentialState(
            String ssid,
            String credential,
            boolean available,
            boolean hiddenSsid,
            BitSet allowedKeyManagement,
            BitSet allowedProtocols,
            BitSet allowedPairwiseCiphers,
            BitSet allowedGroupCiphers) {
        this(ssid, credential, available, hiddenSsid,
                allowedKeyManagement, allowedProtocols,
                allowedPairwiseCiphers, allowedGroupCiphers,
                null, null, null, null, null, null);
    }

    public WifiCredentialState(
            String ssid,
            String credential,
            boolean available,
            boolean hiddenSsid,
            BitSet allowedKeyManagement,
            BitSet allowedProtocols,
            BitSet allowedPairwiseCiphers,
            BitSet allowedGroupCiphers,
            String eapMethod,
            String phase2Method,
            String identity,
            String anonymousIdentity,
            String enterprisePassword,
            String caCertificate) {
        if (ssid == null) throw new IllegalArgumentException("ssid");
        this.ssid = ssid;
        this.credential = credential == null ? "" : credential;
        this.available = available;
        this.hiddenSsid = hiddenSsid;
        this.allowedKeyManagement = copy(allowedKeyManagement);
        this.allowedProtocols = copy(allowedProtocols);
        this.allowedPairwiseCiphers = copy(allowedPairwiseCiphers);
        this.allowedGroupCiphers = copy(allowedGroupCiphers);
        this.eapMethod = eapMethod;
        this.phase2Method = phase2Method;
        this.identity = identity;
        this.anonymousIdentity = anonymousIdentity;
        this.enterprisePassword = enterprisePassword;
        this.caCertificate = caCertificate;
    }

    public String getSsid() { return ssid; }
    public String getCredential() { return credential; }
    public boolean isAvailable() { return available; }
    public boolean isHiddenSsid() { return hiddenSsid; }
    public BitSet getAllowedKeyManagement() { return copy(allowedKeyManagement); }
    public BitSet getAllowedProtocols() { return copy(allowedProtocols); }
    public BitSet getAllowedPairwiseCiphers() { return copy(allowedPairwiseCiphers); }
    public BitSet getAllowedGroupCiphers() { return copy(allowedGroupCiphers); }
    public String getEapMethod() { return eapMethod; }
    public String getPhase2Method() { return phase2Method; }
    public String getIdentity() { return identity; }
    public String getAnonymousIdentity() { return anonymousIdentity; }
    public String getEnterprisePassword() { return enterprisePassword; }
    public String getCaCertificate() { return caCertificate; }

    private static BitSet copy(BitSet value) {
        return value == null ? null : (BitSet) value.clone();
    }
}
