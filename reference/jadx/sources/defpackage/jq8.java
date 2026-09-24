package defpackage;

import java.security.SecureRandom;
import java.security.cert.CertPathValidatorException;
import java.security.cert.X509Certificate;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.ConnectionPool;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RealCall;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jq8 {
    public static boolean a(String str, CloudCredentials cloudCredentials, boolean z) throws mf8 {
        OkHttpClient.Builder builderC = z ? c(null) : new OkHttpClient.Builder();
        String validUsername = cloudCredentials.getValidUsername();
        String password = cloudCredentials.getPassword();
        if (password == null) {
            password = "";
        }
        mq8.b(builderC, validUsername, password);
        boolean z2 = true;
        builderC.f = true;
        builderC.b(nc8.I(Protocol.HTTP_1_1));
        OkHttpClient okHttpClient = new OkHttpClient(builderC);
        Request.Builder builder = new Request.Builder();
        builder.d(str);
        builder.c.d("Depth", "0");
        builder.c("PROPFIND", null);
        Request request = new Request(builder);
        try {
            Response responseG = new RealCall(okHttpClient, request).g();
            try {
                if (!responseG.H && responseG.d != 207) {
                    z2 = false;
                }
                responseG.close();
                return z2;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(responseG, th);
                    throw th2;
                }
            }
        } catch (CertPathValidatorException e) {
            throw new mf8(e, b(request));
        } catch (SSLHandshakeException e2) {
            throw new mf8(e2, b(request));
        }
    }

    public static X509Certificate b(Request request) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        lh6 lh6Var = new lh6();
        try {
            new RealCall(new OkHttpClient(c(new bz(10, lh6Var, countDownLatch))), request).g().close();
        } catch (Throwable unused) {
        }
        if (!countDownLatch.await(10L, TimeUnit.SECONDS)) {
            vr6.w$default(vr6.INSTANCE, "WebDavHttp", "Timed out while reading WebDAV certificate info", null, 4, null);
        }
        return (X509Certificate) lh6Var.a;
    }

    public static OkHttpClient.Builder c(bz bzVar) {
        iq8 iq8Var = new iq8(bzVar);
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        sSLContext.init(null, new iq8[]{iq8Var}, new SecureRandom());
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.f = true;
        TimeUnit.NANOSECONDS.getClass();
        builder.b = new ConnectionPool(0, 0, 0, 0, 8160, TaskRunner.t, null, false, false);
        builder.b(nc8.I(Protocol.HTTP_1_1));
        SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
        socketFactory.getClass();
        builder.d(socketFactory, iq8Var);
        hq8 hq8Var = new hq8();
        if (hq8Var != builder.t) {
            builder.B = null;
        }
        builder.t = hq8Var;
        return builder;
    }
}
