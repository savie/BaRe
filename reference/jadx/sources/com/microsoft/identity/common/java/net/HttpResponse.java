package com.microsoft.identity.common.java.net;

import com.microsoft.identity.common.java.util.StringUtil;
import java.util.Date;
import java.util.List;
import java.util.Map;
import net.jcip.annotations.Immutable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Immutable
public final class HttpResponse {
    private final Date mDate;
    private final String mResponseBody;
    private final Map<String, List<String>> mResponseHeaders;
    private final int mStatusCode;

    public HttpResponse(Date date, int i, String str, Map<String, List<String>> map) {
        this.mDate = new Date(date.getTime());
        this.mStatusCode = i;
        this.mResponseBody = str;
        this.mResponseHeaders = map;
    }

    public final String getBody() {
        return this.mResponseBody;
    }

    public final Date getDate() {
        return new Date(this.mDate.getTime());
    }

    public final String getHeaderValue(String str) {
        List<String> list;
        Map<String, List<String>> map = this.mResponseHeaders;
        if (map == null || StringUtil.isNullOrEmpty(str) || (list = map.get(str)) == null || list.size() <= 0) {
            return null;
        }
        return list.get(0);
    }

    public final Map<String, List<String>> getHeaders() {
        return this.mResponseHeaders;
    }

    public final int getStatusCode() {
        return this.mStatusCode;
    }

    public final String toString() {
        return "HttpResponse{mStatusCode=" + this.mStatusCode + ", mResponseBody='" + this.mResponseBody + "', mResponseHeaders=" + this.mResponseHeaders + '}';
    }
}
