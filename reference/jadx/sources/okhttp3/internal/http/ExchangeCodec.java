package okhttp3.internal.http;

import defpackage.ij7;
import defpackage.nh7;
import defpackage.wi7;
import java.io.IOException;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface ExchangeCodec {

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public interface Carrier {
        void b(RealCall realCall, IOException iOException);

        void cancel();

        void f();

        Route h();
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    void a();

    void b(Request request);

    boolean c();

    void cancel();

    ij7 d(Response response);

    Response.Builder e(boolean z);

    void f();

    long g(Response response);

    wi7 getSocket();

    Carrier h();

    nh7 i(Request request, long j);
}
