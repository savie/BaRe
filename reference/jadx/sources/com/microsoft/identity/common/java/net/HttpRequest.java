package com.microsoft.identity.common.java.net;

import defpackage.f6;
import java.net.URL;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class HttpRequest {
    private final byte[] mRequestContent;
    private final HashMap mRequestHeaders;
    private final String mRequestMethod;
    private final URL mRequestUrl;

    public HttpRequest(URL url, Map map, String str, byte[] bArr) {
        HashMap map2 = new HashMap();
        this.mRequestHeaders = map2;
        if (url == null) {
            f6.n("requestUrl is marked non-null but is null");
            throw null;
        }
        if (str == null) {
            f6.n("requestMethod is marked non-null but is null");
            throw null;
        }
        this.mRequestUrl = url;
        map2.put("Host", url.getAuthority());
        map2.putAll(map);
        this.mRequestMethod = str;
        this.mRequestContent = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
    }

    public final byte[] getRequestContent() {
        byte[] bArr = this.mRequestContent;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }

    public final Map<String, String> getRequestHeaders() {
        return Collections.unmodifiableMap(this.mRequestHeaders);
    }

    public final String getRequestMethod() {
        return this.mRequestMethod;
    }

    public final URL getRequestUrl() {
        return this.mRequestUrl;
    }
}
