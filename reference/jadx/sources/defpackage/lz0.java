package defpackage;

import java.util.concurrent.ConcurrentHashMap;
import okhttp3.Authenticator;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lz0 implements Authenticator {
    public final dn2 b;
    public final ConcurrentHashMap c;
    public final sl4 d;

    public lz0(dn2 dn2Var, ConcurrentHashMap concurrentHashMap) {
        sl4 sl4Var = new sl4();
        this.b = dn2Var;
        this.c = concurrentHashMap;
        this.d = sl4Var;
    }

    @Override // okhttp3.Authenticator
    public final Request b(Route route, Response response) {
        dn2 dn2Var = this.b;
        Request requestB = dn2Var.b(route, response);
        if (requestB != null) {
            sl4 sl4Var = this.d;
            boolean zW = sl4Var.w();
            Headers headers = requestB.c;
            if ((zW ? headers.d("Proxy-Authorization") : headers.d("Authorization")) != null) {
                this.c.put(sl4Var.w() ? sl4Var.z(route.b) : sl4Var.z(requestB), dn2Var);
            }
        }
        return requestB;
    }
}
