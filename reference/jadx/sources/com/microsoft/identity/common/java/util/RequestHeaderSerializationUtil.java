package com.microsoft.identity.common.java.util;

import com.google.gson.a;
import defpackage.f6;
import defpackage.t14;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class RequestHeaderSerializationUtil {
    private static final a mGson = new a(new t14());

    public static String toJson(HashMap map) {
        if (map != null) {
            return mGson.i(map);
        }
        f6.n("headerMap is marked non-null but is null");
        return null;
    }
}
