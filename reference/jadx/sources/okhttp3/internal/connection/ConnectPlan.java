package okhttp3.internal.connection;

import defpackage.c6;
import defpackage.el1;
import defpackage.f48;
import defpackage.fz5;
import defpackage.ge;
import defpackage.hy0;
import defpackage.l0;
import defpackage.l40;
import defpackage.oq7;
import defpackage.pe4;
import defpackage.uk5;
import defpackage.uq7;
import defpackage.v20;
import defpackage.y5;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.CipherSuite;
import okhttp3.ConnectionSpec;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.OkHostnameVerifier;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ConnectPlan implements RoutePlanner.Plan, ExchangeCodec.Carrier {
    public final int G;
    public final boolean H;
    public volatile boolean I;
    public Socket J;
    public Socket K;
    public Handshake L;
    public Protocol M;
    public BufferedSocketKt$asBufferedSocket$1 N;
    public RealConnection O;
    public final TaskRunner a;
    public final RealConnectionPool b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int k;
    public final boolean n;
    public final ConnectionUser p;
    public final RealRoutePlanner q;
    public final Route r;
    public final List t;
    public final int x;
    public final Request y;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Proxy.Type.HTTP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public ConnectPlan(TaskRunner taskRunner, RealConnectionPool realConnectionPool, int i, int i2, int i3, int i4, int i5, boolean z, ConnectionUser connectionUser, RealRoutePlanner realRoutePlanner, Route route, List list, int i6, Request request, int i7, boolean z2) {
        taskRunner.getClass();
        realConnectionPool.getClass();
        connectionUser.getClass();
        route.getClass();
        this.a = taskRunner;
        this.b = realConnectionPool;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.k = i5;
        this.n = z;
        this.p = connectionUser;
        this.q = realRoutePlanner;
        this.r = route;
        this.t = list;
        this.x = i6;
        this.y = request;
        this.G = i7;
        this.H = z2;
    }

    public static ConnectPlan l(ConnectPlan connectPlan, int i, Request request, int i2, boolean z, int i3) {
        return new ConnectPlan(connectPlan.a, connectPlan.b, connectPlan.c, connectPlan.d, connectPlan.e, connectPlan.f, connectPlan.k, connectPlan.n, connectPlan.p, connectPlan.q, connectPlan.r, connectPlan.t, (i3 & 1) != 0 ? connectPlan.x : i, (i3 & 2) != 0 ? connectPlan.y : request, (i3 & 4) != 0 ? connectPlan.G : i2, (i3 & 8) != 0 ? connectPlan.H : z);
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public final RoutePlanner.Plan a() {
        return new ConnectPlan(this.a, this.b, this.c, this.d, this.e, this.f, this.k, this.n, this.p, this.q, this.r, this.t, this.x, this.y, this.G, this.H);
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public final RealConnection c() {
        this.p.u(this.r);
        RealConnection realConnection = this.O;
        realConnection.getClass();
        this.p.t(realConnection, this.r);
        ReusePlan reusePlanI = this.q.i(this, this.t);
        if (reusePlanI != null) {
            return reusePlanI.a;
        }
        synchronized (realConnection) {
            RealConnectionPool realConnectionPool = this.b;
            realConnectionPool.getClass();
            TimeZone timeZone = _UtilJvmKt.a;
            realConnectionPool.g.add(realConnection);
            realConnectionPool.e.d(realConnectionPool.f, 0L);
            this.p.b(realConnection);
        }
        this.p.v(realConnection);
        this.p.e(realConnection);
        return realConnection;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan, okhttp3.internal.http.ExchangeCodec.Carrier
    public final void cancel() {
        this.I = true;
        Socket socket = this.J;
        if (socket != null) {
            _UtilJvmKt.c(socket);
        }
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public final boolean d() {
        return this.M != null;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public final RoutePlanner.ConnectResult e() {
        Socket socket;
        Socket socket2;
        Route route = this.r;
        if (this.J != null) {
            l0.e("TCP already connected");
            return null;
        }
        ConnectionUser connectionUser = this.p;
        connectionUser.x(this);
        boolean z = false;
        try {
            try {
                connectionUser.w(route);
                i();
                z = true;
                RoutePlanner.ConnectResult connectResult = new RoutePlanner.ConnectResult(this, null, null, 6);
                connectionUser.i(this);
                return connectResult;
            } catch (IOException e) {
                route.a.getClass();
                if (route.b.type() != Proxy.Type.DIRECT) {
                    Address address = route.a;
                    address.g.connectFailed(address.h.i(), route.b.address(), e);
                }
                connectionUser.j(route, e);
                RoutePlanner.ConnectResult connectResult2 = new RoutePlanner.ConnectResult(this, null, e, 2);
                connectionUser.i(this);
                if (!z && (socket2 = this.J) != null) {
                    _UtilJvmKt.c(socket2);
                }
                return connectResult2;
            }
        } catch (Throwable th) {
            connectionUser.i(this);
            if (!z && (socket = this.J) != null) {
                _UtilJvmKt.c(socket);
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:87:0x013e  */
    /* JADX WARN: Code duplicated, block: B:89:0x0142  */
    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public final RoutePlanner.ConnectResult g() throws Throwable {
        ConnectPlan connectPlanM;
        Socket socket;
        ConnectPlan connectPlan;
        Socket socket2 = this.J;
        ConnectPlan connectPlan2 = null;
        if (socket2 == null) {
            c6.f("TCP not connected");
            return null;
        }
        if (d()) {
            l0.e("already connected");
            return null;
        }
        Route route = this.r;
        Address address = route.a;
        Address address2 = route.a;
        List list = address.j;
        ConnectionUser connectionUser = this.p;
        connectionUser.x(this);
        boolean z = false;
        try {
            try {
                if (this.y != null) {
                    RoutePlanner.ConnectResult connectResultK = k();
                    if (connectResultK.b != null || connectResultK.c != null) {
                        connectionUser.i(this);
                        Socket socket3 = this.K;
                        if (socket3 != null) {
                            _UtilJvmKt.c(socket3);
                        }
                        _UtilJvmKt.c(socket2);
                        return connectResultK;
                    }
                }
                if (address2.c != null) {
                    BufferedSocketKt$asBufferedSocket$1 bufferedSocketKt$asBufferedSocket$1 = this.N;
                    if (bufferedSocketKt$asBufferedSocket$1 == null) {
                        pe4.F("socket");
                        throw null;
                    }
                    if (bufferedSocketKt$asBufferedSocket$1.b.b.x()) {
                        BufferedSocketKt$asBufferedSocket$1 bufferedSocketKt$asBufferedSocket$2 = this.N;
                        if (bufferedSocketKt$asBufferedSocket$2 == null) {
                            pe4.F("socket");
                            throw null;
                        }
                        if (bufferedSocketKt$asBufferedSocket$2.c.b.x()) {
                            connectionUser.m();
                            SSLSocketFactory sSLSocketFactory = address2.c;
                            HttpUrl httpUrl = address2.h;
                            Socket socketCreateSocket = sSLSocketFactory.createSocket(socket2, httpUrl.d, httpUrl.e, true);
                            socketCreateSocket.getClass();
                            SSLSocket sSLSocket = (SSLSocket) socketCreateSocket;
                            ConnectPlan connectPlanN = n(list, sSLSocket);
                            ConnectionSpec connectionSpec = (ConnectionSpec) list.get(connectPlanN.G);
                            connectPlanM = connectPlanN.m(list, sSLSocket);
                            try {
                                connectionSpec.a(sSLSocket, connectPlanN.H);
                                j(sSLSocket, connectionSpec);
                                connectionUser.q();
                                connectPlan = connectPlanM;
                            } catch (IOException e) {
                                e = e;
                                connectionUser.j(route, e);
                                if (this.n && !(e instanceof ProtocolException) && !(e instanceof InterruptedIOException) && ((!(e instanceof SSLHandshakeException) || !(e.getCause() instanceof CertificateException)) && !(e instanceof SSLPeerUnverifiedException) && (e instanceof SSLException))) {
                                    connectPlan2 = connectPlanM;
                                }
                                RoutePlanner.ConnectResult connectResult = new RoutePlanner.ConnectResult(this, connectPlan2, e);
                                connectionUser.i(this);
                                if (!z) {
                                    socket = this.K;
                                    if (socket != null) {
                                        _UtilJvmKt.c(socket);
                                    }
                                    _UtilJvmKt.c(socket2);
                                }
                                return connectResult;
                            }
                        }
                    }
                    throw new IOException("TLS tunnel buffered too many bytes!");
                }
                this.K = socket2;
                List list2 = address2.i;
                Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
                if (!list2.contains(protocol)) {
                    protocol = Protocol.HTTP_1_1;
                }
                this.M = protocol;
                connectPlan = null;
                try {
                    TaskRunner taskRunner = this.a;
                    RealConnectionPool realConnectionPool = this.b;
                    Route route2 = this.r;
                    Socket socket4 = this.K;
                    socket4.getClass();
                    Handshake handshake = this.L;
                    Protocol protocol2 = this.M;
                    protocol2.getClass();
                    BufferedSocketKt$asBufferedSocket$1 bufferedSocketKt$asBufferedSocket$3 = this.N;
                    if (bufferedSocketKt$asBufferedSocket$3 == null) {
                        pe4.F("socket");
                        throw null;
                    }
                    RealConnection realConnection = new RealConnection(taskRunner, realConnectionPool, route2, socket2, socket4, handshake, protocol2, bufferedSocketKt$asBufferedSocket$3, this.k, this.b.b);
                    this.O = realConnection;
                    realConnection.i();
                    connectionUser.o(route);
                    try {
                        RoutePlanner.ConnectResult connectResult2 = new RoutePlanner.ConnectResult(this, null, null, 6);
                        connectionUser.i(this);
                        return connectResult2;
                    } catch (IOException e2) {
                        e = e2;
                        connectPlanM = connectPlan;
                        z = true;
                        connectionUser.j(route, e);
                        if (this.n) {
                            connectPlan2 = connectPlanM;
                        }
                        RoutePlanner.ConnectResult connectResult3 = new RoutePlanner.ConnectResult(this, connectPlan2, e);
                        connectionUser.i(this);
                        if (!z) {
                            socket = this.K;
                            if (socket != null) {
                                _UtilJvmKt.c(socket);
                            }
                            _UtilJvmKt.c(socket2);
                        }
                        return connectResult3;
                    } catch (Throwable th) {
                        th = th;
                        z = true;
                        connectionUser.i(this);
                        if (!z) {
                            Socket socket5 = this.K;
                            if (socket5 != null) {
                                _UtilJvmKt.c(socket5);
                            }
                            _UtilJvmKt.c(socket2);
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    e = e3;
                    connectPlanM = connectPlan;
                }
            } catch (IOException e4) {
                e = e4;
                connectPlanM = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final Route h() {
        return this.r;
    }

    public final void i() throws IOException {
        Socket socketCreateSocket;
        Proxy.Type type = this.r.b.type();
        int i = type == null ? -1 : WhenMappings.a[type.ordinal()];
        if (i == 1 || i == 2) {
            socketCreateSocket = this.r.a.b.createSocket();
            socketCreateSocket.getClass();
        } else {
            socketCreateSocket = new Socket(this.r.b);
        }
        this.J = socketCreateSocket;
        if (this.I) {
            y5.m("canceled");
            return;
        }
        socketCreateSocket.setSoTimeout(this.f);
        try {
            Platform platform = Platform.a;
            Platform.a.f(socketCreateSocket, this.r.c, this.e);
            try {
                this.N = new BufferedSocketKt$asBufferedSocket$1(new l40(socketCreateSocket));
            } catch (NullPointerException e) {
                if (pe4.d(e.getMessage(), "throw with null exception")) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.r.c);
            connectException.initCause(e2);
            throw connectException;
        }
    }

    public final void j(SSLSocket sSLSocket, ConnectionSpec connectionSpec) {
        Protocol protocolA;
        Address address = this.r.a;
        try {
            if (connectionSpec.b) {
                Platform platform = Platform.a;
                Platform.a.e(sSLSocket, address.h.d, address.i);
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            session.getClass();
            Handshake handshakeA = Handshake.Companion.a(session);
            HostnameVerifier hostnameVerifier = address.d;
            hostnameVerifier.getClass();
            boolean zVerify = hostnameVerifier.verify(address.h.d, session);
            int i = 2;
            if (zVerify) {
                CertificatePinner certificatePinner = address.e;
                certificatePinner.getClass();
                this.L = new Handshake(handshakeA.a, handshakeA.b, handshakeA.c, new v20(i, certificatePinner, handshakeA, address));
                address.h.d.getClass();
                Iterator it = certificatePinner.a.iterator();
                String strG = null;
                if (it.hasNext()) {
                    ((CertificatePinner.Pin) it.next()).getClass();
                    uq7.V(null, "**.", false);
                    throw null;
                }
                if (connectionSpec.b) {
                    Platform platform2 = Platform.a;
                    strG = Platform.a.g(sSLSocket);
                }
                this.K = sSLSocket;
                this.N = new BufferedSocketKt$asBufferedSocket$1(new l40(sSLSocket));
                if (strG != null) {
                    Protocol.b.getClass();
                    protocolA = Protocol.Companion.a(strG);
                } else {
                    protocolA = Protocol.HTTP_1_1;
                }
                this.M = protocolA;
                Platform platform3 = Platform.a;
                Platform.a.getClass();
                return;
            }
            List listA = handshakeA.a();
            if (listA.isEmpty()) {
                throw new SSLPeerUnverifiedException("Hostname " + address.h.d + " not verified (no certificates)");
            }
            Object obj = listA.get(0);
            obj.getClass();
            X509Certificate x509Certificate = (X509Certificate) obj;
            StringBuilder sb = new StringBuilder("\n            |Hostname ");
            sb.append(address.h.d);
            sb.append(" not verified:\n            |    certificate: ");
            CertificatePinner certificatePinner2 = CertificatePinner.c;
            StringBuilder sb2 = new StringBuilder("sha256/");
            hy0 hy0Var = hy0.d;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            encoded.getClass();
            sb2.append(ge.w(encoded).c("SHA-256").a());
            sb.append(sb2.toString());
            sb.append("\n            |    DN: ");
            sb.append(x509Certificate.getSubjectDN().getName());
            sb.append("\n            |    subjectAltNames: ");
            sb.append(el1.g1(OkHostnameVerifier.a(x509Certificate, 7), OkHostnameVerifier.a(x509Certificate, 2)));
            sb.append("\n            ");
            throw new SSLPeerUnverifiedException(oq7.M(sb.toString()));
        } catch (Throwable th) {
            Platform platform4 = Platform.a;
            Platform.a.getClass();
            _UtilJvmKt.c(sSLSocket);
            throw th;
        }
    }

    public final RoutePlanner.ConnectResult k() throws IOException {
        Request request;
        Request request2 = this.y;
        request2.getClass();
        Route route = this.r;
        String str = "CONNECT " + _UtilJvmKt.i(route.a.h, true) + " HTTP/1.1";
        while (true) {
            BufferedSocketKt$asBufferedSocket$1 bufferedSocketKt$asBufferedSocket$1 = this.N;
            if (bufferedSocketKt$asBufferedSocket$1 == null) {
                pe4.F("socket");
                throw null;
            }
            Http1ExchangeCodec http1ExchangeCodec = new Http1ExchangeCodec(null, this, bufferedSocketKt$asBufferedSocket$1);
            BufferedSocketKt$asBufferedSocket$1 bufferedSocketKt$asBufferedSocket$2 = this.N;
            if (bufferedSocketKt$asBufferedSocket$2 == null) {
                pe4.F("socket");
                throw null;
            }
            f48 f48VarD = bufferedSocketKt$asBufferedSocket$2.b.a.d();
            long j = this.c;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            f48VarD.g(j, timeUnit);
            BufferedSocketKt$asBufferedSocket$1 bufferedSocketKt$asBufferedSocket$3 = this.N;
            if (bufferedSocketKt$asBufferedSocket$3 == null) {
                pe4.F("socket");
                throw null;
            }
            bufferedSocketKt$asBufferedSocket$3.c.a.d().g(this.d, timeUnit);
            http1ExchangeCodec.l(request2.c, str);
            http1ExchangeCodec.a();
            Response.Builder builderE = http1ExchangeCodec.e(false);
            builderE.getClass();
            builderE.a = request2;
            Response responseA = builderE.a();
            int i = responseA.d;
            http1ExchangeCodec.k(responseA);
            if (i == 200) {
                request = null;
                break;
            }
            if (i != 407) {
                y5.m(fz5.j(i, "Unexpected response code for CONNECT: "));
                return null;
            }
            Request requestB = route.a.f.b(route, responseA);
            if (requestB == null) {
                y5.m("Failed to authenticate with proxy");
                return null;
            }
            if ("close".equalsIgnoreCase(Response.b("Connection", responseA))) {
                request = requestB;
                break;
            }
            request2 = requestB;
        }
        if (request == null) {
            return new RoutePlanner.ConnectResult(this, null, null, 6);
        }
        Socket socket = this.J;
        if (socket != null) {
            _UtilJvmKt.c(socket);
        }
        int i2 = this.x + 1;
        ConnectionUser connectionUser = this.p;
        if (i2 < 21) {
            connectionUser.o(route);
            return new RoutePlanner.ConnectResult(this, l(this, i2, request, 0, false, 12), null, 4);
        }
        ProtocolException protocolException = new ProtocolException("Too many tunnel connections attempted: 21");
        connectionUser.j(route, protocolException);
        return new RoutePlanner.ConnectResult(this, null, protocolException, 2);
    }

    public final ConnectPlan m(List list, SSLSocket sSLSocket) {
        String[] strArr;
        String[] strArr2;
        list.getClass();
        int i = this.G;
        int size = list.size();
        for (int i2 = i + 1; i2 < size; i2++) {
            ConnectionSpec connectionSpec = (ConnectionSpec) list.get(i2);
            connectionSpec.getClass();
            if (connectionSpec.a && (((strArr = connectionSpec.d) == null || _UtilCommonKt.f(strArr, sSLSocket.getEnabledProtocols(), uk5.a)) && ((strArr2 = connectionSpec.c) == null || _UtilCommonKt.f(strArr2, sSLSocket.getEnabledCipherSuites(), CipherSuite.c)))) {
                return l(this, 0, null, i2, i != -1, 3);
            }
        }
        return null;
    }

    public final ConnectPlan n(List list, SSLSocket sSLSocket) throws UnknownServiceException {
        list.getClass();
        if (this.G != -1) {
            return this;
        }
        ConnectPlan connectPlanM = m(list, sSLSocket);
        if (connectPlanM != null) {
            return connectPlanM;
        }
        StringBuilder sb = new StringBuilder("Unable to find acceptable protocols. isFallback=");
        sb.append(this.H);
        sb.append(", modes=");
        sb.append(list);
        String[] enabledProtocols = sSLSocket.getEnabledProtocols();
        enabledProtocols.getClass();
        String string = Arrays.toString(enabledProtocols);
        string.getClass();
        sb.append(", supported protocols=");
        sb.append(string);
        throw new UnknownServiceException(sb.toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void f() {
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void b(RealCall realCall, IOException iOException) {
    }
}
