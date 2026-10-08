package com.microsoft.identity.common.java.dto;

import defpackage.y77;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class Credential extends AccountCredentialBase {

    @y77("cached_at")
    private String mCachedAt;

    @y77("client_id")
    private String mClientId;

    @y77("credential_type")
    private String mCredentialType;

    @y77("environment")
    private String mEnvironment;

    @y77("home_account_id")
    private String mHomeAccountId;

    @y77("secret")
    private String mSecret;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Credential credential = (Credential) obj;
            String str = this.mClientId;
            String str2 = credential.mClientId;
            if (str == null ? str2 != null : !str.equals(str2)) {
                return false;
            }
            String str3 = this.mCredentialType;
            String str4 = credential.mCredentialType;
            if (str3 == null ? str4 != null : !str3.equals(str4)) {
                return false;
            }
            String str5 = this.mEnvironment;
            String str6 = credential.mEnvironment;
            if (str5 == null ? str6 != null : !str5.equals(str6)) {
                return false;
            }
            String str7 = this.mSecret;
            String str8 = credential.mSecret;
            if (str7 == null ? str8 != null : !str7.equals(str8)) {
                return false;
            }
            String str9 = this.mHomeAccountId;
            String str10 = credential.mHomeAccountId;
            if (str9 == null ? str10 != null : !str9.equals(str10)) {
                return false;
            }
            String str11 = this.mCachedAt;
            String str12 = credential.mCachedAt;
            if (str11 != null) {
                return str11.equals(str12);
            }
            if (str12 == null) {
                return true;
            }
        }
        return false;
    }

    public final String getCachedAt() {
        return this.mCachedAt;
    }

    public final String getClientId() {
        return this.mClientId;
    }

    public final String getCredentialType() {
        return this.mCredentialType;
    }

    public final String getEnvironment() {
        return this.mEnvironment;
    }

    public final String getHomeAccountId() {
        return this.mHomeAccountId;
    }

    public final String getSecret() {
        return this.mSecret;
    }

    public int hashCode() {
        String str = this.mClientId;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.mCredentialType;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.mEnvironment;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.mSecret;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.mHomeAccountId;
        int iHashCode5 = (iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.mCachedAt;
        return iHashCode5 + (str6 != null ? str6.hashCode() : 0);
    }

    public abstract boolean isExpired();

    public final void setCachedAt(String str) {
        this.mCachedAt = str;
    }

    public final void setClientId(String str) {
        this.mClientId = str;
    }

    public final void setCredentialType(String str) {
        this.mCredentialType = str;
    }

    public final void setEnvironment(String str) {
        this.mEnvironment = str;
    }

    public final void setHomeAccountId(String str) {
        this.mHomeAccountId = str;
    }

    public final void setSecret(String str) {
        this.mSecret = str;
    }
}
