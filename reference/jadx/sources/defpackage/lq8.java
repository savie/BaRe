package defpackage;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import okhttp3.Authenticator;
import okhttp3.Credentials;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lq8 implements Authenticator {
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;

    public lq8(String str, String str2) {
        this.b = str;
        this.c = str2;
    }

    @Override // okhttp3.Authenticator
    public final Request b(Route route, Response response) {
        Request request = response.a;
        String str = this.b;
        String str2 = this.c;
        try {
            request.getClass();
            if (request.c.d("Authorization") != null) {
                response.close();
                return null;
            }
            Request.Builder builderA = request.a();
            Charset charset = StandardCharsets.UTF_8;
            charset.getClass();
            builderA.c.d("Authorization", Credentials.a(str, str2, charset));
            Request request2 = new Request(builderA);
            response.close();
            return request2;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(response, th);
                throw th2;
            }
        }
    }
}
