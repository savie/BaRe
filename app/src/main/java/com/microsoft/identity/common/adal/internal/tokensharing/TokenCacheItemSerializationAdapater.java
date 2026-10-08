package com.microsoft.identity.common.adal.internal.tokensharing;

import com.microsoft.identity.client.claims.ClaimsRequest;
import com.microsoft.identity.common.adal.internal.cache.ADALTokenCacheItem;
import defpackage.dm4;
import defpackage.eq3;
import defpackage.fl4;
import defpackage.gl4;
import defpackage.kl4;
import defpackage.pj4;
import defpackage.qj4;
import defpackage.z28;
import java.lang.reflect.Type;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class TokenCacheItemSerializationAdapater implements pj4, dm4 {
    private static void throwIfParameterMissing(fl4 fl4Var, String str) {
        if (!fl4Var.a.containsKey(str)) {
            throw new gl4(eq3.k("TokenCacheItemSerializationAdapaterAttribute ", str, " is missing for deserialization."));
        }
    }

    private static void throwIfParameterNull(String str, String str2) {
        if (str == null) {
            throw new gl4(eq3.k("TokenCacheItemSerializationAdapaterAttribute ", str2, " is null for serialization."));
        }
    }

    @Override // defpackage.pj4
    public final Object deserialize(qj4 qj4Var, Type type, z28 z28Var) throws gl4 {
        fl4 fl4VarI = qj4Var.i();
        throwIfParameterMissing(fl4VarI, "authority");
        throwIfParameterMissing(fl4VarI, ClaimsRequest.ID_TOKEN);
        throwIfParameterMissing(fl4VarI, "foci");
        throwIfParameterMissing(fl4VarI, "refresh_token");
        String strO = fl4VarI.x(ClaimsRequest.ID_TOKEN).o();
        ADALTokenCacheItem aDALTokenCacheItem = new ADALTokenCacheItem();
        aDALTokenCacheItem.setAuthority(fl4VarI.x("authority").o());
        aDALTokenCacheItem.setRawIdToken(strO);
        aDALTokenCacheItem.setFamilyClientId(fl4VarI.x("foci").o());
        aDALTokenCacheItem.setRefreshToken(fl4VarI.x("refresh_token").o());
        return aDALTokenCacheItem;
    }

    @Override // defpackage.dm4
    public final qj4 serialize(Object obj, z28 z28Var) {
        ADALTokenCacheItem aDALTokenCacheItem = (ADALTokenCacheItem) obj;
        throwIfParameterNull(aDALTokenCacheItem.getAuthority(), "authority");
        throwIfParameterNull(aDALTokenCacheItem.getRefreshToken(), "refresh_token");
        throwIfParameterNull(aDALTokenCacheItem.getRawIdToken(), ClaimsRequest.ID_TOKEN);
        throwIfParameterNull(aDALTokenCacheItem.getFamilyClientId(), "foci");
        fl4 fl4Var = new fl4();
        fl4Var.p("authority", new kl4(aDALTokenCacheItem.getAuthority()));
        fl4Var.p("refresh_token", new kl4(aDALTokenCacheItem.getRefreshToken()));
        fl4Var.p(ClaimsRequest.ID_TOKEN, new kl4(aDALTokenCacheItem.getRawIdToken()));
        fl4Var.p("foci", new kl4(aDALTokenCacheItem.getFamilyClientId()));
        return fl4Var;
    }
}
