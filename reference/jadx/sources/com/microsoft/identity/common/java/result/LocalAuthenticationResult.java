package com.microsoft.identity.common.java.result;

import com.microsoft.identity.common.java.cache.ICacheRecord;
import com.microsoft.identity.common.java.dto.AccessTokenRecord;
import com.microsoft.identity.common.java.dto.AccountRecord;
import com.microsoft.identity.common.java.dto.IdTokenRecord;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.request.SdkType;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.f6;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class LocalAuthenticationResult {
    private final AccessTokenRecord mAccessTokenRecord;
    private final ArrayList mCompleteResultFromCache;
    private String mCorrelationId;
    private final String mRefreshToken;
    private String mRefreshTokenAge;
    private String mSpeRing;
    private final ArrayList mTelemetry = new ArrayList();

    public LocalAuthenticationResult(ICacheRecord iCacheRecord, ArrayList arrayList, SdkType sdkType, boolean z) {
        if (iCacheRecord == null) {
            f6.n("cacheRecord is marked non-null but is null");
            throw null;
        }
        if (sdkType == null) {
            f6.n("sdkType is marked non-null but is null");
            throw null;
        }
        AccessTokenRecord accessToken = iCacheRecord.getAccessToken();
        this.mAccessTokenRecord = accessToken;
        AccountRecord account = iCacheRecord.getAccount();
        if (iCacheRecord.getRefreshToken() != null) {
            this.mRefreshToken = iCacheRecord.getRefreshToken().getSecret();
            iCacheRecord.getRefreshToken().getClass();
        }
        IdTokenRecord v1IdToken = sdkType == SdkType.ADAL ? iCacheRecord.getV1IdToken() : iCacheRecord.getIdToken();
        if (v1IdToken != null) {
            Logger.verbose("LocalAuthenticationResult", "Id Token type: " + v1IdToken.getCredentialType());
        } else if (iCacheRecord.getV1IdToken() != null) {
            Logger.info("LocalAuthenticationResult", "V1 Id Token returned here, ");
            iCacheRecord.getV1IdToken().getClass();
        }
        StringBuilder sb = new StringBuilder("Constructing LocalAuthentication result, AccessTokenRecord null: ");
        sb.append(accessToken == null);
        sb.append(", AccountRecord null: ");
        sb.append(account == null);
        sb.append(", RefreshTokenRecord null or empty: ");
        sb.append(StringUtil.isNullOrEmpty(this.mRefreshToken));
        sb.append(", IdTokenRecord null: ");
        sb.append(v1IdToken == null);
        Logger.info("LocalAuthenticationResult", sb.toString());
        this.mCompleteResultFromCache = arrayList;
    }

    public final List<ICacheRecord> getCacheRecordWithTenantProfileData() {
        return this.mCompleteResultFromCache;
    }

    public final String getCorrelationId() {
        return this.mCorrelationId;
    }

    public final String getRefreshTokenAge() {
        return this.mRefreshTokenAge;
    }

    public final String[] getScope() {
        return this.mAccessTokenRecord.getTarget().split("\\s");
    }

    public final String getSpeRing() {
        return this.mSpeRing;
    }

    public final String getTenantId() {
        return this.mAccessTokenRecord.getRealm();
    }

    public final String getUniqueId() {
        return this.mAccessTokenRecord.getHomeAccountId();
    }

    public final void setCorrelationId(String str) {
        this.mCorrelationId = str;
    }

    public final void setRefreshTokenAge(String str) {
        this.mRefreshTokenAge = str;
    }

    public final void setSpeRing(String str) {
        this.mSpeRing = str;
    }

    public final void setTelemetry(List<Map<String, String>> list) {
        if (list != null) {
            this.mTelemetry.addAll(list);
        } else {
            f6.n("telemetry is marked non-null but is null");
        }
    }
}
