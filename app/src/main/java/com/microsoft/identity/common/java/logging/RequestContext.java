package com.microsoft.identity.common.java.logging;

import com.google.gson.a;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class RequestContext extends HashMap<String, String> implements Map<String, String> {
    private static final a mGson = new a();

    public final String toJsonString() {
        return mGson.i(this);
    }
}
