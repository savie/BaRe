package com.microsoft.identity.common.java.exception;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class IntuneAppProtectionPolicyRequiredException extends ServiceException {
    private String mAccountUpn;
    private String mAccountUserId;
    private String mAuthorityUrl;
    private String mTenantId;

    public final String getAccountUpn() {
        return this.mAccountUpn;
    }

    public final String getAccountUserId() {
        return this.mAccountUserId;
    }

    public final String getAuthorityUrl() {
        return this.mAuthorityUrl;
    }

    public final String getTenantId() {
        return this.mTenantId;
    }

    public final void setAccountUpn(String str) {
        this.mAccountUpn = str;
    }

    public final void setAccountUserId(String str) {
        this.mAccountUserId = str;
    }

    public final void setAuthorityUrl(String str) {
        this.mAuthorityUrl = str;
    }

    public final void setTenantId(String str) {
        this.mTenantId = str;
    }
}
