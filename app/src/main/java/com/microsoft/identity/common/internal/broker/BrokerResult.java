package com.microsoft.identity.common.internal.broker;

import com.microsoft.identity.client.claims.ClaimsRequest;
import com.microsoft.identity.common.java.cache.ICacheRecord;
import com.microsoft.identity.common.java.dto.AadDeviceIdRecord;
import defpackage.y77;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class BrokerResult {

    @y77("authority")
    private String mAuthority;

    @y77("cli_telem_error_code")
    private String mCliTelemErrorCode;

    @y77("cli_telem_suberror_code")
    private String mCliTelemSubErrorCode;

    @y77("correlation_id")
    private String mCorrelationId;

    @y77("broker_error_code")
    private String mErrorCode;

    @y77("broker_error_message")
    private String mErrorMessage;

    @y77("broker_exception_type")
    private final String mExceptionType;

    @y77("http_response_body")
    private String mHttpResponseBody;

    @y77("http_response_headers")
    private String mHttpResponseHeaders;

    @y77("http_response_code")
    private int mHttpStatusCode;

    @y77("local_account_id")
    private String mLocalAccountId;

    @y77("refresh_token_age")
    private String mRefreshTokenAge;

    @y77("spe_ring")
    private String mSpeRing;

    @y77("oauth_sub_error")
    private String mSubErrorCode;

    @y77("tenant_id")
    private String mTenantId;

    @y77("username")
    private String mUserName;

    @y77(ClaimsRequest.ACCESS_TOKEN)
    private String mAccessToken = null;

    @y77(ClaimsRequest.ID_TOKEN)
    private String mIdToken = null;

    @y77("refresh_token")
    private String mRefreshToken = null;

    @y77("home_account_id")
    private String mHomeAccountId = null;

    @y77("token_type")
    private String mTokenType = null;

    @y77("client_id")
    private String mClientId = null;

    @y77("family_id")
    private String mFamilyId = null;

    @y77("scopes")
    private String mScope = null;

    @y77("client_info")
    private String mClientInfo = null;

    @y77("environment")
    private String mEnvironment = null;

    @y77("expires_on")
    private long mExpiresOn = 0;

    @y77("ext_expires_on")
    private long mExtendedExpiresOn = 0;

    @y77("cached_at")
    private long mCachedAt = 0;

    @y77("success")
    private boolean mSuccess = false;

    @y77("tenant_profile_cache_records")
    private final List<ICacheRecord> mTenantProfileData = null;

    @y77("serviced_from_cache")
    private boolean mServicedFromCache = false;

    @y77("broker_aad_device_id_record")
    private final AadDeviceIdRecord mAadDeviceIdRecord = null;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class Builder {
        private String mAuthority;
        private String mCliTelemErrorCode;
        private String mCliTelemSubErrorCode;
        private String mCorrelationId;
        private String mErrorCode;
        private String mErrorMessage;
        private String mExceptionType;
        private String mHttpResponseBody;
        private String mHttpResponseHeaders;
        private int mHttpStatusCode;
        private String mLocalAccountId;
        private String mRefreshTokenAge;
        private String mSpeRing;
        private String mSubErrorCode;
        private String mTenantId;
        private String mUserName;

        public final void authority(String str) {
            this.mAuthority = str;
        }

        public final void cliTelemErrorCode(String str) {
            this.mCliTelemErrorCode = str;
        }

        public final void cliTelemSubErrorCode(String str) {
            this.mCliTelemSubErrorCode = str;
        }

        public final void correlationId(String str) {
            this.mCorrelationId = str;
        }

        public final void errorCode(String str) {
            this.mErrorCode = str;
        }

        public final void errorMessage(String str) {
            this.mErrorMessage = str;
        }

        public final void exceptionType(String str) {
            this.mExceptionType = str;
        }

        public final void httpResponseBody(String str) {
            this.mHttpResponseBody = str;
        }

        public final void httpResponseHeaders(String str) {
            this.mHttpResponseHeaders = str;
        }

        public final void httpStatusCode(int i) {
            this.mHttpStatusCode = i;
        }

        public final void localAccountId(String str) {
            this.mLocalAccountId = str;
        }

        public final void refreshTokenAge(String str) {
            this.mRefreshTokenAge = str;
        }

        public final void speRing(String str) {
            this.mSpeRing = str;
        }

        public final void subErrorCode(String str) {
            this.mSubErrorCode = str;
        }

        public final void tenantId(String str) {
            this.mTenantId = str;
        }

        public final void userName(String str) {
            this.mUserName = str;
        }
    }

    public BrokerResult(Builder builder) {
        this.mLocalAccountId = builder.mLocalAccountId;
        this.mUserName = builder.mUserName;
        this.mAuthority = builder.mAuthority;
        this.mTenantId = builder.mTenantId;
        this.mSpeRing = builder.mSpeRing;
        this.mRefreshTokenAge = builder.mRefreshTokenAge;
        this.mErrorCode = builder.mErrorCode;
        this.mErrorMessage = builder.mErrorMessage;
        this.mCorrelationId = builder.mCorrelationId;
        this.mSubErrorCode = builder.mSubErrorCode;
        this.mHttpStatusCode = builder.mHttpStatusCode;
        this.mHttpResponseBody = builder.mHttpResponseBody;
        this.mHttpResponseHeaders = builder.mHttpResponseHeaders;
        this.mCliTelemErrorCode = builder.mCliTelemErrorCode;
        this.mCliTelemSubErrorCode = builder.mCliTelemSubErrorCode;
        this.mExceptionType = builder.mExceptionType;
    }

    public final String getAuthority() {
        return this.mAuthority;
    }

    public final String getCliTelemErrorCode() {
        return this.mCliTelemErrorCode;
    }

    public final String getCliTelemSubErrorCode() {
        return this.mCliTelemSubErrorCode;
    }

    public final String getClientId() {
        return this.mClientId;
    }

    public final String getClientInfo() {
        return this.mClientInfo;
    }

    public final String getCorrelationId() {
        return this.mCorrelationId;
    }

    public final String getEnvironment() {
        return this.mEnvironment;
    }

    public final String getErrorCode() {
        return this.mErrorCode;
    }

    public final String getErrorMessage() {
        return this.mErrorMessage;
    }

    public final String getExceptionType() {
        return this.mExceptionType;
    }

    public final String getFamilyId() {
        return this.mFamilyId;
    }

    public final String getHttpResponseBody() {
        return this.mHttpResponseBody;
    }

    public final String getHttpResponseHeaders() {
        return this.mHttpResponseHeaders;
    }

    public final String getIdToken() {
        return this.mIdToken;
    }

    public final String getLocalAccountId() {
        return this.mLocalAccountId;
    }

    public final String getRefreshToken() {
        return this.mRefreshToken;
    }

    public final String getRefreshTokenAge() {
        return this.mRefreshTokenAge;
    }

    public final String getScope() {
        return this.mScope;
    }

    public final String getSpeRing() {
        return this.mSpeRing;
    }

    public final String getSubErrorCode() {
        return this.mSubErrorCode;
    }

    public final String getTenantId() {
        return this.mTenantId;
    }

    public final ArrayList getTenantProfileData() {
        if (this.mTenantProfileData == null) {
            return null;
        }
        return new ArrayList(this.mTenantProfileData);
    }

    public final String getUserName() {
        return this.mUserName;
    }

    public final boolean isServicedFromCache() {
        return this.mServicedFromCache;
    }

    public final boolean isSuccess() {
        return this.mSuccess;
    }
}
