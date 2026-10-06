package com.microsoft.identity.common.internal.util;

import com.microsoft.identity.common.java.cache.CacheRecord;
import com.microsoft.identity.common.java.cache.ICacheRecord;
import defpackage.gl4;
import defpackage.pj4;
import defpackage.qj4;
import defpackage.z28;
import java.lang.reflect.Type;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ICacheRecordGsonAdapter implements pj4 {
    @Override // defpackage.pj4
    public final Object deserialize(qj4 qj4Var, Type type, z28 z28Var) throws gl4 {
        return (ICacheRecord) z28Var.E(qj4Var, CacheRecord.class);
    }
}
