package com.microsoft.identity.common.java.util;

import defpackage.cp0;
import defpackage.ed8;
import defpackage.f6;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CommonURIBuilder extends ed8 {
    public CommonURIBuilder(String str) throws URISyntaxException {
        URI uri = new URI(str);
        Charset charset = StandardCharsets.UTF_8;
        super(uri);
    }

    public final void addParameterIfAbsent(String str, String str2) {
        String str3;
        if (str == null) {
            str3 = "param is marked non-null but is null";
        } else {
            if (str2 != null) {
                Iterator it = getQueryParams().iterator();
                while (it.hasNext()) {
                    if (((cp0) it.next()).a.equalsIgnoreCase(str)) {
                        return;
                    }
                }
                a(str, str2);
                return;
            }
            str3 = "value is marked non-null but is null";
        }
        f6.n(str3);
    }

    public final void addParametersIfAbsent(Map map) {
        if (map == null) {
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            addParameterIfAbsent((String) entry.getKey(), String.valueOf(entry.getValue()));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonURIBuilder(URI uri) {
        super(uri);
        Charset charset = StandardCharsets.UTF_8;
    }
}
