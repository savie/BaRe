package okhttp3;

import defpackage.b6;
import defpackage.c6;
import defpackage.el1;
import defpackage.g84;
import defpackage.l0;
import defpackage.pe4;
import defpackage.xs1;
import defpackage.y5;
import defpackage.yr5;
import java.net.ProxySelector;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RouteDatabase;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.proxy.NullProxySelector;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.OkHostnameVerifier;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class OkHttpClient implements Call.Factory, WebSocket.Factory {
    public static final List D = _UtilJvmKt.k(new Protocol[]{Protocol.HTTP_2, Protocol.HTTP_1_1});
    public static final List E = _UtilJvmKt.k(new ConnectionSpec[]{ConnectionSpec.g, ConnectionSpec.h});
    public final RouteDatabase A;
    public final TaskRunner B;
    public final ConnectionPool C;
    public final Dispatcher a;
    public final List b;
    public final List c;
    public final b6 d;
    public final boolean e;
    public final boolean f;
    public final Authenticator g;
    public final boolean h;
    public final boolean i;
    public final CookieJar j;
    public final Dns k;
    public final ProxySelector l;
    public final Authenticator m;
    public final SocketFactory n;
    public final SSLSocketFactory o;
    public final X509TrustManager p;
    public final List q;
    public final List r;
    public final HostnameVerifier s;
    public final CertificatePinner t;
    public final CertificateChainCleaner u;
    public final int v;
    public final int w;
    public final int x;
    public final int y;
    public final long z;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Builder {
        public long A;
        public RouteDatabase B;
        public TaskRunner C;
        public ConnectionPool b;
        public b6 e;
        public boolean f;
        public boolean g;
        public Authenticator h;
        public boolean i;
        public boolean j;
        public CookieJar k;
        public Dns l;
        public ProxySelector m;
        public Authenticator n;
        public SocketFactory o;
        public SSLSocketFactory p;
        public X509TrustManager q;
        public List r;
        public List s;
        public HostnameVerifier t;
        public CertificatePinner u;
        public CertificateChainCleaner v;
        public int w;
        public int x;
        public int y;
        public int z;
        public Dispatcher a = new Dispatcher();
        public final ArrayList c = new ArrayList();
        public final ArrayList d = new ArrayList();

        public Builder() {
            TimeZone timeZone = _UtilJvmKt.a;
            this.e = new b6(11);
            this.f = true;
            this.g = true;
            Authenticator authenticator = Authenticator.a;
            this.h = authenticator;
            this.i = true;
            this.j = true;
            this.k = CookieJar.a;
            this.l = Dns.a;
            this.n = authenticator;
            SocketFactory socketFactory = SocketFactory.getDefault();
            socketFactory.getClass();
            this.o = socketFactory;
            this.r = OkHttpClient.E;
            this.s = OkHttpClient.D;
            this.t = OkHostnameVerifier.a;
            this.u = CertificatePinner.c;
            this.w = yr5.p;
            this.x = yr5.p;
            this.y = yr5.p;
            this.z = 60000;
            this.A = 1024L;
        }

        public final void a(long j, TimeUnit timeUnit) {
            timeUnit.getClass();
            this.w = _UtilJvmKt.b(j, timeUnit);
        }

        public final void b(List list) {
            list.getClass();
            ArrayList arrayList = new ArrayList(list);
            Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
            if (!arrayList.contains(protocol) && !arrayList.contains(Protocol.HTTP_1_1)) {
                y5.l(arrayList, "protocols must contain h2_prior_knowledge or http/1.1: ");
                return;
            }
            if (arrayList.contains(protocol) && arrayList.size() > 1) {
                y5.l(arrayList, "protocols containing h2_prior_knowledge cannot use other protocols: ");
                return;
            }
            if (arrayList.contains(Protocol.HTTP_1_0)) {
                y5.l(arrayList, "protocols must not contain http/1.0: ");
                return;
            }
            if (arrayList.contains(null)) {
                c6.f("protocols must not contain null");
                return;
            }
            arrayList.remove(Protocol.SPDY_3);
            if (!arrayList.equals(this.s)) {
                this.B = null;
            }
            List listUnmodifiableList = Collections.unmodifiableList(arrayList);
            listUnmodifiableList.getClass();
            this.s = listUnmodifiableList;
        }

        public final void c(long j, TimeUnit timeUnit) {
            timeUnit.getClass();
            this.x = _UtilJvmKt.b(j, timeUnit);
        }

        public final void d(SSLSocketFactory sSLSocketFactory, X509TrustManager x509TrustManager) {
            sSLSocketFactory.getClass();
            if (!sSLSocketFactory.equals(this.p) || !x509TrustManager.equals(this.q)) {
                this.B = null;
            }
            this.p = sSLSocketFactory;
            Platform platform = Platform.a;
            this.v = Platform.a.c(x509TrustManager);
            this.q = x509TrustManager;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    public OkHttpClient(Builder builder) throws NoSuchAlgorithmException, KeyStoreException {
        this.a = builder.a;
        this.b = _UtilJvmKt.j(builder.c);
        this.c = _UtilJvmKt.j(builder.d);
        this.d = builder.e;
        boolean z = builder.f;
        this.e = z;
        boolean z2 = builder.g;
        this.f = z2;
        this.g = builder.h;
        this.h = builder.i;
        this.i = builder.j;
        this.j = builder.k;
        this.k = builder.l;
        ProxySelector proxySelector = builder.m;
        if (proxySelector == null && (proxySelector = ProxySelector.getDefault()) == null) {
            proxySelector = NullProxySelector.a;
        }
        this.l = proxySelector;
        this.m = builder.n;
        this.n = builder.o;
        List list = builder.r;
        this.q = list;
        this.r = builder.s;
        this.s = builder.t;
        int i = builder.w;
        this.v = i;
        int i2 = builder.x;
        this.w = i2;
        int i3 = builder.y;
        this.x = i3;
        this.y = builder.z;
        this.z = builder.A;
        RouteDatabase routeDatabase = builder.B;
        RouteDatabase routeDatabase2 = routeDatabase == null ? new RouteDatabase() : routeDatabase;
        this.A = routeDatabase2;
        TaskRunner taskRunner = builder.C;
        this.B = taskRunner == null ? TaskRunner.t : taskRunner;
        ConnectionPool connectionPool = builder.b;
        if (connectionPool == null) {
            connectionPool = new ConnectionPool(i2, i3, i, i2, 31, null, routeDatabase2, z, z2);
            builder.b = connectionPool;
        }
        this.C = connectionPool;
        if (list != null && list.isEmpty()) {
            this.o = null;
            this.u = null;
            this.p = null;
            this.t = CertificatePinner.c;
            break;
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                this.o = null;
                this.u = null;
                this.p = null;
                this.t = CertificatePinner.c;
                break;
            }
            if (((ConnectionSpec) it.next()).a) {
                SSLSocketFactory sSLSocketFactory = builder.p;
                if (sSLSocketFactory != null) {
                    this.o = sSLSocketFactory;
                    CertificateChainCleaner certificateChainCleaner = builder.v;
                    certificateChainCleaner.getClass();
                    this.u = certificateChainCleaner;
                    X509TrustManager x509TrustManager = builder.q;
                    x509TrustManager.getClass();
                    this.p = x509TrustManager;
                    CertificatePinner certificatePinner = builder.u;
                    certificatePinner.getClass();
                    this.t = pe4.d(certificatePinner.b, certificateChainCleaner) ? certificatePinner : new CertificatePinner(certificatePinner.a, certificateChainCleaner);
                    break;
                }
                Platform platform = Platform.a;
                Platform.a.getClass();
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init((KeyStore) null);
                TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                trustManagers.getClass();
                if (trustManagers.length == 1) {
                    TrustManager trustManager = trustManagers[0];
                    if (trustManager instanceof X509TrustManager) {
                        X509TrustManager x509TrustManager2 = (X509TrustManager) trustManager;
                        this.p = x509TrustManager2;
                        Platform platform2 = Platform.a;
                        platform2.getClass();
                        try {
                            SSLContext sSLContextL = platform2.l();
                            sSLContextL.init(null, new TrustManager[]{x509TrustManager2}, null);
                            SSLSocketFactory socketFactory = sSLContextL.getSocketFactory();
                            socketFactory.getClass();
                            this.o = socketFactory;
                            CertificateChainCleaner certificateChainCleanerC = Platform.a.c(x509TrustManager2);
                            this.u = certificateChainCleanerC;
                            CertificatePinner certificatePinner2 = builder.u;
                            certificatePinner2.getClass();
                            this.t = pe4.d(certificatePinner2.b, certificateChainCleanerC) ? certificatePinner2 : new CertificatePinner(certificatePinner2.a, certificateChainCleanerC);
                            break;
                        } catch (GeneralSecurityException e) {
                            throw new AssertionError("No System TLS: " + e, e);
                        }
                    }
                }
                String string = Arrays.toString(trustManagers);
                string.getClass();
                g84.f("Unexpected default trust managers: ".concat(string));
                throw null;
            }
        }
        X509TrustManager x509TrustManager3 = this.p;
        CertificateChainCleaner certificateChainCleaner2 = this.u;
        SSLSocketFactory sSLSocketFactory2 = this.o;
        List list2 = this.c;
        List list3 = this.b;
        list3.getClass();
        if (list3.contains(null)) {
            g84.f(xs1.l("Null interceptor: ", list3));
            throw null;
        }
        list2.getClass();
        if (list2.contains(null)) {
            g84.f(xs1.l("Null network interceptor: ", list2));
            throw null;
        }
        List list4 = this.q;
        if (list4 == null || !list4.isEmpty()) {
            Iterator it2 = list4.iterator();
            while (it2.hasNext()) {
                if (((ConnectionSpec) it2.next()).a) {
                    if (sSLSocketFactory2 == null) {
                        l0.e("sslSocketFactory == null");
                        throw null;
                    }
                    if (certificateChainCleaner2 == null) {
                        l0.e("certificateChainCleaner == null");
                        throw null;
                    }
                    if (x509TrustManager3 != null) {
                        return;
                    }
                    l0.e("x509TrustManager == null");
                    throw null;
                }
            }
        }
        if (sSLSocketFactory2 != null) {
            l0.e("Check failed.");
            throw null;
        }
        if (certificateChainCleaner2 != null) {
            l0.e("Check failed.");
            throw null;
        }
        if (x509TrustManager3 != null) {
            l0.e("Check failed.");
            throw null;
        }
        if (pe4.d(this.t, CertificatePinner.c)) {
            return;
        }
        l0.e("Check failed.");
        throw null;
    }

    @Override // okhttp3.Call.Factory
    public final RealCall a(Request request) {
        request.getClass();
        return new RealCall(this, request);
    }

    public final Builder b() {
        Builder builder = new Builder();
        builder.a = this.a;
        builder.b = this.C;
        el1.K0(this.b, builder.c);
        el1.K0(this.c, builder.d);
        builder.e = this.d;
        builder.f = this.e;
        builder.g = this.f;
        builder.h = this.g;
        builder.i = this.h;
        builder.j = this.i;
        builder.k = this.j;
        builder.l = this.k;
        builder.m = this.l;
        builder.n = this.m;
        builder.o = this.n;
        builder.p = this.o;
        builder.q = this.p;
        builder.r = this.q;
        builder.s = this.r;
        builder.t = this.s;
        builder.u = this.t;
        builder.v = this.u;
        builder.w = this.v;
        builder.x = this.w;
        builder.y = this.x;
        builder.z = this.y;
        builder.A = this.z;
        builder.B = this.A;
        builder.C = this.B;
        return builder;
    }

    public OkHttpClient() {
        this(new Builder());
    }
}
