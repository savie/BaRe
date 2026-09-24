package okhttp3.internal.http;

import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class RequestLine {
    public static String a(HttpUrl httpUrl) {
        httpUrl.getClass();
        String strB = httpUrl.b();
        String strD = httpUrl.d();
        if (strD == null) {
            return strB;
        }
        return strB + '?' + strD;
    }
}
