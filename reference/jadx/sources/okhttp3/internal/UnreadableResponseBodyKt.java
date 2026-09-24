package okhttp3.internal;

import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class UnreadableResponseBodyKt {
    public static final Response a(Response response) {
        response.getClass();
        Response.Builder builderG = response.g();
        ResponseBody responseBody = response.k;
        builderG.g = new UnreadableResponseBody(responseBody.j(), responseBody.h());
        return builderG.a();
    }
}
