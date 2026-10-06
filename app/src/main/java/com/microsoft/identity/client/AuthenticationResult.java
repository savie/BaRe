package com.microsoft.identity.client;

import android.text.TextUtils;
import com.microsoft.identity.common.java.cache.ICacheRecord;
import com.microsoft.identity.common.java.dto.AccessTokenRecord;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AuthenticationResult {
    private final AccessTokenRecord mAccessToken;

    public AuthenticationResult(String str, List list) {
        ICacheRecord iCacheRecord = (ICacheRecord) list.get(0);
        this.mAccessToken = iCacheRecord.getAccessToken();
        iCacheRecord.getAccount().getClass();
        if (TextUtils.isEmpty(str)) {
            int i = com.microsoft.identity.common.logging.Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("AuthenticationResult:sanitizeCorrelationId", "Correlation id was empty, returning null.");
            return;
        }
        try {
            UUID.fromString(str);
        } catch (IllegalArgumentException e) {
            int i2 = com.microsoft.identity.common.logging.Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("AuthenticationResult:sanitizeCorrelationId", "Correlation id is not a valid UUID.", e);
        }
    }

    public final String getAccessToken() {
        return this.mAccessToken.getSecret();
    }

    public final Date getExpiresOn() {
        return new Date(TimeUnit.SECONDS.toMillis(Long.parseLong(this.mAccessToken.getExpiresOn())));
    }
}
