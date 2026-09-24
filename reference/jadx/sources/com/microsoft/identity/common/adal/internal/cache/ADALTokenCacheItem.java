package com.microsoft.identity.common.adal.internal.cache;

import com.microsoft.identity.common.java.adal.ADALUserInfo;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectoryAuthorizationRequest;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectoryOAuth2Strategy;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectoryTokenResponse;
import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ADALTokenCacheItem {
    private String mAccessToken;
    private String mAuthority;
    private String mClientId;
    private Date mExpiresOn;
    private Date mExtendedExpiresOn;
    private String mFamilyClientId;
    private boolean mIsMultiResourceRefreshToken;
    private String mRawIdToken;
    private String mRefreshtoken;
    private String mResource;
    private String mSpeRing;
    private String mTenantId;
    private ADALUserInfo mUserInfo;

    public ADALTokenCacheItem(ADALTokenCacheItem aDALTokenCacheItem) {
        this.mAuthority = aDALTokenCacheItem.mAuthority;
        this.mResource = aDALTokenCacheItem.getResource();
        this.mClientId = aDALTokenCacheItem.mClientId;
        this.mAccessToken = aDALTokenCacheItem.getAccessToken();
        this.mRefreshtoken = aDALTokenCacheItem.mRefreshtoken;
        this.mRawIdToken = aDALTokenCacheItem.getRawIdToken();
        this.mUserInfo = aDALTokenCacheItem.getUserInfo();
        this.mExpiresOn = aDALTokenCacheItem.getExpiresOn();
        this.mIsMultiResourceRefreshToken = aDALTokenCacheItem.getIsMultiResourceRefreshToken();
        this.mTenantId = aDALTokenCacheItem.getTenantId();
        this.mFamilyClientId = aDALTokenCacheItem.getFamilyClientId();
        this.mExtendedExpiresOn = aDALTokenCacheItem.getExtendedExpiresOn();
        this.mSpeRing = aDALTokenCacheItem.getSpeRing();
    }

    public static ADALTokenCacheItem getAsFRTTokenCacheItem(ADALTokenCacheItem aDALTokenCacheItem) {
        ADALTokenCacheItem aDALTokenCacheItem2 = new ADALTokenCacheItem(aDALTokenCacheItem);
        aDALTokenCacheItem2.setResource(null);
        aDALTokenCacheItem2.setAccessToken(null);
        aDALTokenCacheItem2.setClientId(null);
        return aDALTokenCacheItem2;
    }

    public static ADALTokenCacheItem getAsMRRTTokenCacheItem(ADALTokenCacheItem aDALTokenCacheItem) {
        ADALTokenCacheItem aDALTokenCacheItem2 = new ADALTokenCacheItem(aDALTokenCacheItem);
        aDALTokenCacheItem2.setResource(null);
        aDALTokenCacheItem2.setAccessToken(null);
        return aDALTokenCacheItem2;
    }

    public String getAccessToken() {
        return this.mAccessToken;
    }

    public final String getAuthority() {
        return this.mAuthority;
    }

    public final String getClientId() {
        return this.mClientId;
    }

    public Date getExpiresOn() {
        Date date = this.mExpiresOn;
        return date != null ? new Date(date.getTime()) : date;
    }

    public final Date getExtendedExpiresOn() {
        Date date = this.mExtendedExpiresOn;
        return date != null ? new Date(date.getTime()) : date;
    }

    public final String getFamilyClientId() {
        return this.mFamilyClientId;
    }

    public boolean getIsMultiResourceRefreshToken() {
        return this.mIsMultiResourceRefreshToken;
    }

    public String getRawIdToken() {
        return this.mRawIdToken;
    }

    public final String getRefreshToken() {
        return this.mRefreshtoken;
    }

    public String getResource() {
        return this.mResource;
    }

    public String getSpeRing() {
        return this.mSpeRing;
    }

    public String getTenantId() {
        return this.mTenantId;
    }

    public ADALUserInfo getUserInfo() {
        return this.mUserInfo;
    }

    public void setAccessToken(String str) {
        this.mAccessToken = str;
    }

    public void setAuthority(String str) {
        this.mAuthority = str;
    }

    public void setClientId(String str) {
        this.mClientId = str;
    }

    public void setExpiresOn(Date date) {
        if (date != null) {
            date = new Date(date.getTime());
        }
        this.mExpiresOn = date;
    }

    public final void setExtendedExpiresOn(Date date) {
        if (date != null) {
            date = new Date(date.getTime());
        }
        this.mExtendedExpiresOn = date;
    }

    public final void setFamilyClientId(String str) {
        this.mFamilyClientId = str;
    }

    public void setIsMultiResourceRefreshToken(boolean z) {
        this.mIsMultiResourceRefreshToken = z;
    }

    public void setRawIdToken(String str) {
        this.mRawIdToken = str;
    }

    public void setRefreshToken(String str) {
        this.mRefreshtoken = str;
    }

    public void setResource(String str) {
        this.mResource = str;
    }

    public void setSpeRing(String str) {
        this.mSpeRing = str;
    }

    public void setTenantId(String str) {
        this.mTenantId = str;
    }

    public void setUserInfo(ADALUserInfo aDALUserInfo) {
        this.mUserInfo = aDALUserInfo;
    }

    public ADALTokenCacheItem() {
    }

    public ADALTokenCacheItem(AzureActiveDirectoryOAuth2Strategy azureActiveDirectoryOAuth2Strategy, AzureActiveDirectoryAuthorizationRequest azureActiveDirectoryAuthorizationRequest, AzureActiveDirectoryTokenResponse azureActiveDirectoryTokenResponse) throws ClientException {
        throw null;
    }
}
