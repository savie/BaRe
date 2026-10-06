package com.microsoft.identity.common.java.cache;

import com.microsoft.identity.common.java.dto.AccessTokenRecord;
import com.microsoft.identity.common.java.dto.AccountRecord;
import com.microsoft.identity.common.java.dto.IdTokenRecord;
import com.microsoft.identity.common.java.dto.RefreshTokenRecord;
import defpackage.f6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CacheRecord implements ICacheRecord {
    private final AccessTokenRecord mAccessToken;
    private final AccountRecord mAccount;
    private final IdTokenRecord mIdToken;
    private final RefreshTokenRecord mRefreshToken;
    private final IdTokenRecord mV1IdToken;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class CacheRecordBuilder {
        private AccessTokenRecord accessToken;
        private AccountRecord account;
        private IdTokenRecord idToken;
        private RefreshTokenRecord refreshToken;
        private IdTokenRecord v1IdToken;

        public final void accessToken(AccessTokenRecord accessTokenRecord) {
            this.accessToken = accessTokenRecord;
        }

        public final void account(AccountRecord accountRecord) {
            if (accountRecord != null) {
                this.account = accountRecord;
            } else {
                f6.n("account is marked non-null but is null");
            }
        }

        public final CacheRecord build() {
            return new CacheRecord(this.account, this.accessToken, this.refreshToken, this.idToken, this.v1IdToken);
        }

        public final void idToken(IdTokenRecord idTokenRecord) {
            this.idToken = idTokenRecord;
        }

        public final void refreshToken(RefreshTokenRecord refreshTokenRecord) {
            this.refreshToken = refreshTokenRecord;
        }

        public final String toString() {
            return "CacheRecord.CacheRecordBuilder(account=" + this.account + ", accessToken=" + this.accessToken + ", refreshToken=" + this.refreshToken + ", idToken=" + this.idToken + ", v1IdToken=" + this.v1IdToken + ")";
        }

        public final void v1IdToken(IdTokenRecord idTokenRecord) {
            this.v1IdToken = idTokenRecord;
        }
    }

    public CacheRecord(AccountRecord accountRecord, AccessTokenRecord accessTokenRecord, RefreshTokenRecord refreshTokenRecord, IdTokenRecord idTokenRecord, IdTokenRecord idTokenRecord2) {
        if (accountRecord == null) {
            f6.n("account is marked non-null but is null");
            throw null;
        }
        this.mAccount = accountRecord;
        this.mAccessToken = accessTokenRecord;
        this.mRefreshToken = refreshTokenRecord;
        this.mIdToken = idTokenRecord;
        this.mV1IdToken = idTokenRecord2;
    }

    public static CacheRecordBuilder builder() {
        return new CacheRecordBuilder();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && CacheRecord.class == obj.getClass()) {
            CacheRecord cacheRecord = (CacheRecord) obj;
            AccountRecord accountRecord = this.mAccount;
            AccountRecord accountRecord2 = cacheRecord.mAccount;
            if (accountRecord == null ? accountRecord2 != null : !accountRecord.equals(accountRecord2)) {
                return false;
            }
            AccessTokenRecord accessTokenRecord = this.mAccessToken;
            AccessTokenRecord accessTokenRecord2 = cacheRecord.mAccessToken;
            if (accessTokenRecord == null ? accessTokenRecord2 != null : !accessTokenRecord.equals(accessTokenRecord2)) {
                return false;
            }
            RefreshTokenRecord refreshTokenRecord = this.mRefreshToken;
            RefreshTokenRecord refreshTokenRecord2 = cacheRecord.mRefreshToken;
            if (refreshTokenRecord == null ? refreshTokenRecord2 != null : !refreshTokenRecord.equals(refreshTokenRecord2)) {
                return false;
            }
            IdTokenRecord idTokenRecord = this.mIdToken;
            IdTokenRecord idTokenRecord2 = cacheRecord.mIdToken;
            if (idTokenRecord != null) {
                return idTokenRecord.equals(idTokenRecord2);
            }
            if (idTokenRecord2 == null) {
                return true;
            }
        }
        return false;
    }

    @Override // com.microsoft.identity.common.java.cache.ICacheRecord
    public AccessTokenRecord getAccessToken() {
        return this.mAccessToken;
    }

    @Override // com.microsoft.identity.common.java.cache.ICacheRecord
    public AccountRecord getAccount() {
        return this.mAccount;
    }

    @Override // com.microsoft.identity.common.java.cache.ICacheRecord
    public IdTokenRecord getIdToken() {
        return this.mIdToken;
    }

    @Override // com.microsoft.identity.common.java.cache.ICacheRecord
    public RefreshTokenRecord getRefreshToken() {
        return this.mRefreshToken;
    }

    @Override // com.microsoft.identity.common.java.cache.ICacheRecord
    public IdTokenRecord getV1IdToken() {
        return this.mV1IdToken;
    }

    public int hashCode() {
        AccountRecord accountRecord = this.mAccount;
        int iHashCode = (accountRecord != null ? accountRecord.hashCode() : 0) * 31;
        AccessTokenRecord accessTokenRecord = this.mAccessToken;
        int iHashCode2 = (iHashCode + (accessTokenRecord != null ? accessTokenRecord.hashCode() : 0)) * 31;
        RefreshTokenRecord refreshTokenRecord = this.mRefreshToken;
        int iHashCode3 = (iHashCode2 + (refreshTokenRecord != null ? refreshTokenRecord.hashCode() : 0)) * 31;
        IdTokenRecord idTokenRecord = this.mIdToken;
        return iHashCode3 + (idTokenRecord != null ? idTokenRecord.hashCode() : 0);
    }

    public String toString() {
        return "CacheRecord(mAccount=" + getAccount() + ", mAccessToken=" + getAccessToken() + ", mRefreshToken=" + getRefreshToken() + ", mIdToken=" + getIdToken() + ", mV1IdToken=" + getV1IdToken() + ")";
    }
}
