package com.microsoft.identity.common.adal.internal.util;

import com.google.gson.a;
import com.google.gson.reflect.TypeToken;
import com.microsoft.identity.common.internal.util.ICacheRecordGsonAdapter;
import com.microsoft.identity.common.java.cache.ICacheRecord;
import defpackage.t14;
import java.io.StringReader;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class JsonExtensions {
    public static List<ICacheRecord> getICacheRecordListFromJsonString(String str) {
        t14 t14Var = new t14();
        t14Var.c(new ICacheRecordGsonAdapter(), ICacheRecord.class);
        return (List) (str == null ? null : new a(t14Var).b(new StringReader(str), TypeToken.get(TypeToken.getParameterized(List.class, ICacheRecord.class).getType())));
    }
}
