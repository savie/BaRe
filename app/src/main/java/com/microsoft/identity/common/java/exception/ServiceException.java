package com.microsoft.identity.common.java.exception;

import com.microsoft.identity.common.java.net.HttpResponse;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.qj7;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ServiceException extends BaseException {
    private HashMap<String, String> mHttpResponseBody;
    private HashMap<String, List<String>> mHttpResponseHeaders;
    private int mHttpStatusCode;

    public ServiceException(Exception exc, String str, String str2) {
        super(str, str2, exc);
        this.mHttpResponseBody = null;
        this.mHttpResponseHeaders = null;
        this.mHttpStatusCode = 0;
    }

    public final HashMap<String, String> getHttpResponseBody() {
        return this.mHttpResponseBody;
    }

    public final HashMap<String, List<String>> getHttpResponseHeaders() {
        return this.mHttpResponseHeaders;
    }

    public final int getHttpStatusCode() {
        return this.mHttpStatusCode;
    }

    public final void setHttpResponse(HttpResponse httpResponse) throws JSONException {
        HashMap<String, String> map;
        if (httpResponse != null) {
            this.mHttpStatusCode = httpResponse.getStatusCode();
            if (httpResponse.getHeaders() != null) {
                this.mHttpResponseHeaders = new HashMap<>(httpResponse.getHeaders());
            }
            if (httpResponse.getBody() != null) {
                if (StringUtil.isNullOrEmpty(httpResponse.getBody())) {
                    map = new HashMap<>();
                } else {
                    String body = httpResponse.getBody();
                    map = new HashMap<>();
                    qj7 qj7VarCurrent = SpanExtension.current();
                    body.length();
                    qj7VarCurrent.getClass();
                    if (!StringUtil.isNullOrEmpty(body)) {
                        JSONObject jSONObject = new JSONObject(body);
                        Iterator<String> itKeys = jSONObject.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            map.put(next, jSONObject.get(next).toString());
                        }
                    }
                }
                this.mHttpResponseBody = map;
            }
        }
    }

    public final void setHttpResponseBody(HashMap<String, String> map) {
        this.mHttpResponseBody = map;
    }

    public final void setHttpResponseHeaders(HashMap<String, List<String>> map) {
        this.mHttpResponseHeaders = map;
    }

    public ServiceException(String str, String str2, int i) {
        super(str, str2, null);
        this.mHttpResponseBody = null;
        this.mHttpResponseHeaders = null;
        this.mHttpStatusCode = i;
    }
}
