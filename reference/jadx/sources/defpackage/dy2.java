package defpackage;

import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class dy2 extends rg5 {
    public final cy2 a;
    public final Response b;

    public dy2(cy2 cy2Var, Response response, String str) {
        super(cy2Var.d(), str);
        this.a = cy2Var;
        this.b = response;
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String string = this.a.toString();
        Response response = this.b;
        Request request = response.a;
        String str = request.b;
        HttpUrl httpUrl = request.a;
        String strReplaceAll = request.c.toString().replaceAll("Signature=([0-9a-f]+)", "Signature=*REDACTED*").replaceAll("Credential=([^/]+)", "Credential=*REDACTED*");
        int i = response.d;
        String string2 = response.f.toString();
        StringBuilder sbP = u48.p("S3 operation failed; ErrorResponseException{errorResponse=", string, ", request={method=", str, ", url=");
        sbP.append(httpUrl);
        sbP.append(", headers=");
        sbP.append(strReplaceAll);
        sbP.append("}, response={code=");
        sbP.append(i);
        sbP.append(", headers=");
        sbP.append(string2);
        sbP.append("}}");
        return sbP.toString();
    }
}
