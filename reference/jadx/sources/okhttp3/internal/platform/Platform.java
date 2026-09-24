package okhttp3.internal.platform;

import android.os.Build;
import android.util.Log;
import defpackage.hl1;
import defpackage.nw0;
import defpackage.x5;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.internal.platform.android.AndroidLog;
import okhttp3.internal.platform.android.AndroidLogHandler;
import okhttp3.internal.tls.BasicCertificateChainCleaner;
import okhttp3.internal.tls.BasicTrustRootIndex;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.TrustRootIndex;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class Platform {
    public static volatile Platform a;
    public static final Logger b;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public static ArrayList a(List list) {
            list.getClass();
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((Protocol) obj) != Protocol.HTTP_1_0) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((Protocol) it.next()).a);
            }
            return arrayList2;
        }

        public static byte[] b(List list) {
            list.getClass();
            nw0 nw0Var = new nw0();
            for (String str : a(list)) {
                nw0Var.J(str.length());
                nw0Var.Z(str);
            }
            return nw0Var.q(nw0Var.b);
        }
    }

    static {
        try {
            for (Map.Entry entry : AndroidLog.b.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                Logger logger = Logger.getLogger(str);
                if (AndroidLog.a.add(logger)) {
                    logger.setUseParentHandlers(false);
                    logger.setLevel(Log.isLoggable(str2, 3) ? Level.FINE : Log.isLoggable(str2, 4) ? Level.INFO : Level.WARNING);
                    logger.addHandler(AndroidLogHandler.a);
                }
            }
        } catch (RuntimeException e) {
            System.err.println("Possibly running android unit test without robolectric");
            e.printStackTrace();
        }
        Platform android10Platform = Android10Platform.e ? new Android10Platform() : null;
        if (android10Platform == null) {
            android10Platform = AndroidPlatform.e ? new AndroidPlatform() : null;
        }
        if (android10Platform == null) {
            x5.g(Build.VERSION.SDK_INT, "Expected Android API level 21+ but was ");
        } else {
            a = android10Platform;
            b = Logger.getLogger(OkHttpClient.class.getName());
        }
    }

    public CertificateChainCleaner c(X509TrustManager x509TrustManager) {
        return new BasicCertificateChainCleaner(d(x509TrustManager));
    }

    public TrustRootIndex d(X509TrustManager x509TrustManager) {
        X509Certificate[] acceptedIssuers = x509TrustManager.getAcceptedIssuers();
        return new BasicTrustRootIndex((X509Certificate[]) Arrays.copyOf(acceptedIssuers, acceptedIssuers.length));
    }

    public void e(SSLSocket sSLSocket, String str, List list) {
        list.getClass();
    }

    public void f(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        inetSocketAddress.getClass();
        socket.connect(inetSocketAddress, i);
    }

    public String g(SSLSocket sSLSocket) {
        return null;
    }

    public Object h() {
        if (b.isLoggable(Level.FINE)) {
            return new Throwable("response.body().close()");
        }
        return null;
    }

    public boolean i(String str) {
        str.getClass();
        return true;
    }

    public void j(int i, String str, Throwable th) {
        b.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public void k(Object obj, String str) {
        if (obj == null) {
            str = str.concat(" To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        j(5, str, (Throwable) obj);
    }

    public SSLContext l() {
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        sSLContext.getClass();
        return sSLContext;
    }

    public final String toString() {
        return getClass().getSimpleName();
    }
}
