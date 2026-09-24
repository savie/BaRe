package com.microsoft.identity.common.java.cache;

import com.microsoft.identity.common.java.dto.AccessTokenRecord;
import com.microsoft.identity.common.java.dto.AccountRecord;
import com.microsoft.identity.common.java.dto.IdTokenRecord;
import com.microsoft.identity.common.java.dto.RefreshTokenRecord;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface ICacheRecord {
    AccessTokenRecord getAccessToken();

    AccountRecord getAccount();

    IdTokenRecord getIdToken();

    RefreshTokenRecord getRefreshToken();

    IdTokenRecord getV1IdToken();
}
