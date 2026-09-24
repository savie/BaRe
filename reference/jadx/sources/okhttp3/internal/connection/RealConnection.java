package okhttp3.internal.connection;

import defpackage.pe4;
import defpackage.uq7;
import defpackage.zw0;
import java.io.IOException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.Connection;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Route;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.FlowControlListener;
import okhttp3.internal.http2.Http2;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Http2Writer;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.http2.StreamResetException;
import okhttp3.internal.tls.OkHostnameVerifier;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class RealConnection extends Http2Connection.Listener implements Connection, ExchangeCodec.Carrier, Lockable {
    public int G;
    public int H;
    public int I;
    public int J;
    public final ArrayList K;
    public long L;
    public final TaskRunner b;
    public final RealConnectionPool c;
    public final Route d;
    public final Socket e;
    public final Socket f;
    public final Handshake k;
    public final Protocol n;
    public final BufferedSocket p;
    public final int q;
    public final ConnectionListener r;
    public Http2Connection t;
    public boolean x;
    public boolean y;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    public RealConnection(TaskRunner taskRunner, RealConnectionPool realConnectionPool, Route route, Socket socket, Socket socket2, Handshake handshake, Protocol protocol, BufferedSocketKt$asBufferedSocket$1 bufferedSocketKt$asBufferedSocket$1, int i, ConnectionListener connectionListener) {
        taskRunner.getClass();
        realConnectionPool.getClass();
        route.getClass();
        socket.getClass();
        socket2.getClass();
        protocol.getClass();
        bufferedSocketKt$asBufferedSocket$1.getClass();
        this.b = taskRunner;
        this.c = realConnectionPool;
        this.d = route;
        this.e = socket;
        this.f = socket2;
        this.k = handshake;
        this.n = protocol;
        this.p = bufferedSocketKt$asBufferedSocket$1;
        this.q = i;
        this.r = connectionListener;
        this.J = 1;
        this.K = new ArrayList();
        this.L = Long.MAX_VALUE;
    }

    public static void d(OkHttpClient okHttpClient, Route route, IOException iOException) {
        okHttpClient.getClass();
        route.getClass();
        iOException.getClass();
        if (route.b.type() != Proxy.Type.DIRECT) {
            Address address = route.a;
            address.g.connectFailed(address.h.i(), route.b.address(), iOException);
        }
        RouteDatabase routeDatabase = okHttpClient.A;
        synchronized (routeDatabase) {
            routeDatabase.a.add(route);
        }
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public final void a(Http2Connection http2Connection, Settings settings) {
        settings.getClass();
        synchronized (this) {
            try {
                int i = this.J;
                int i2 = (settings.a & 8) != 0 ? settings.b[3] : Integer.MAX_VALUE;
                this.J = i2;
                if (i2 < i) {
                    RealConnectionPool realConnectionPool = this.c;
                    Address address = this.d.a;
                    realConnectionPool.getClass();
                    address.getClass();
                    RealConnectionPool.AddressState addressState = (RealConnectionPool.AddressState) realConnectionPool.d.get(address);
                    if (addressState != null) {
                        realConnectionPool.b(addressState);
                        throw null;
                    }
                } else if (i2 > i) {
                    RealConnectionPool realConnectionPool2 = this.c;
                    realConnectionPool2.e.d(realConnectionPool2.f, 0L);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void b(RealCall realCall, IOException iOException) {
        synchronized (this) {
            try {
                if (!(iOException instanceof StreamResetException)) {
                    if (!(this.t != null) || (iOException instanceof ConnectionShutdownException)) {
                        this.x = true;
                        if (this.H == 0) {
                            if (iOException != null) {
                                d(realCall.a, this.d, iOException);
                            }
                            this.G++;
                        }
                    }
                } else if (((StreamResetException) iOException).a == ErrorCode.REFUSED_STREAM) {
                    int i = this.I + 1;
                    this.I = i;
                    if (i > 1) {
                        this.x = true;
                        this.G++;
                    }
                } else if (((StreamResetException) iOException).a != ErrorCode.CANCEL || !realCall.G) {
                    this.x = true;
                    this.G++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public final void c(Http2Stream http2Stream) {
        http2Stream.d(ErrorCode.REFUSED_STREAM, null);
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void cancel() {
        _UtilJvmKt.c(this.e);
    }

    public final boolean e(Address address, List list) {
        address.getClass();
        HttpUrl httpUrl = address.h;
        TimeZone timeZone = _UtilJvmKt.a;
        if (this.K.size() < this.J && !this.x) {
            Route route = this.d;
            Address address2 = route.a;
            Address address3 = route.a;
            if (address2.a(address)) {
                String str = httpUrl.d;
                String str2 = httpUrl.d;
                if (!pe4.d(str, address3.h.d)) {
                    if (this.t != null && list != null && !list.isEmpty()) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            Route route2 = (Route) it.next();
                            Proxy.Type type = route2.b.type();
                            Proxy.Type type2 = Proxy.Type.DIRECT;
                            if (type == type2 && route.b.type() == type2 && pe4.d(route.c, route2.c)) {
                                if (address.d != OkHostnameVerifier.a) {
                                    break;
                                }
                                TimeZone timeZone2 = _UtilJvmKt.a;
                                HttpUrl httpUrl2 = address3.h;
                                if (httpUrl.e != httpUrl2.e) {
                                    break;
                                }
                                boolean zD = pe4.d(str2, httpUrl2.d);
                                Handshake handshake = this.k;
                                if (!zD) {
                                    if (!this.y && handshake != null) {
                                        List listA = handshake.a();
                                        if (!listA.isEmpty()) {
                                            Object obj = listA.get(0);
                                            obj.getClass();
                                            if (!OkHostnameVerifier.c(str2, (X509Certificate) obj)) {
                                                break;
                                            }
                                        } else {
                                            break;
                                        }
                                    } else {
                                        break;
                                        break;
                                    }
                                }
                                try {
                                    CertificatePinner certificatePinner = address.e;
                                    certificatePinner.getClass();
                                    handshake.getClass();
                                    List listA2 = handshake.a();
                                    str2.getClass();
                                    listA2.getClass();
                                    Iterator it2 = certificatePinner.a.iterator();
                                    if (!it2.hasNext()) {
                                        return true;
                                    }
                                    ((CertificatePinner.Pin) it2.next()).getClass();
                                    uq7.V(null, "**.", false);
                                    throw null;
                                } catch (SSLPeerUnverifiedException unused) {
                                    break;
                                }
                            }
                        }
                    }
                } else {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void f() {
        synchronized (this) {
            this.x = true;
        }
    }

    public final boolean g(boolean z) {
        long j;
        TimeZone timeZone = _UtilJvmKt.a;
        long jNanoTime = System.nanoTime();
        if (this.e.isClosed() || this.f.isClosed() || this.f.isInputShutdown() || this.f.isOutputShutdown()) {
            return false;
        }
        Http2Connection http2Connection = this.t;
        if (http2Connection != null) {
            synchronized (http2Connection) {
                if (http2Connection.f) {
                    return false;
                }
                return http2Connection.G >= http2Connection.y || jNanoTime < http2Connection.H;
            }
        }
        synchronized (this) {
            j = jNanoTime - this.L;
        }
        if (j < 10000000000L || !z) {
            return true;
        }
        Socket socket = this.f;
        zw0 source = this.p.getSource();
        socket.getClass();
        source.getClass();
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                return !source.x();
            } finally {
                socket.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final Route h() {
        return this.d;
    }

    public final void i() throws SocketException {
        this.L = System.nanoTime();
        Protocol protocol = this.n;
        if (protocol == Protocol.HTTP_2 || protocol == Protocol.H2_PRIOR_KNOWLEDGE) {
            this.f.setSoTimeout(0);
            Object obj = this.r;
            FlowControlListener flowControlListener = obj instanceof FlowControlListener ? (FlowControlListener) obj : null;
            if (flowControlListener == null) {
                flowControlListener = FlowControlListener.None.a;
            }
            Http2Connection.Builder builder = new Http2Connection.Builder(this.b);
            BufferedSocket bufferedSocket = this.p;
            String str = this.d.a.h.d;
            bufferedSocket.getClass();
            str.getClass();
            builder.b = bufferedSocket;
            builder.c = _UtilJvmKt.b + ' ' + str;
            builder.d = this;
            builder.f = this.q;
            builder.g = flowControlListener;
            Http2Connection http2Connection = new Http2Connection(builder);
            this.t = http2Connection;
            Settings settings = Http2Connection.S;
            this.J = (settings.a & 8) != 0 ? settings.b[3] : Integer.MAX_VALUE;
            Http2Writer http2Writer = http2Connection.P;
            synchronized (http2Writer) {
                try {
                    if (http2Writer.d) {
                        throw new IOException("closed");
                    }
                    Logger logger = Http2Writer.f;
                    if (logger.isLoggable(Level.FINE)) {
                        logger.fine(_UtilJvmKt.d(">> CONNECTION " + Http2.a.e(), new Object[0]));
                    }
                    http2Writer.a.P(Http2.a);
                    http2Writer.a.flush();
                } catch (Throwable th) {
                    throw th;
                }
            }
            Http2Writer http2Writer2 = http2Connection.P;
            Settings settings2 = http2Connection.J;
            http2Writer2.getClass();
            settings2.getClass();
            synchronized (http2Writer2) {
                try {
                    if (http2Writer2.d) {
                        throw new IOException("closed");
                    }
                    http2Writer2.g(0, Integer.bitCount(settings2.a) * 6, 4, 0);
                    for (int i = 0; i < 10; i++) {
                        boolean z = true;
                        if (((1 << i) & settings2.a) == 0) {
                            z = false;
                        }
                        if (z) {
                            http2Writer2.a.writeShort(i);
                            http2Writer2.a.writeInt(settings2.b[i]);
                        }
                    }
                    http2Writer2.a.flush();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            int iA = http2Connection.J.a();
            if (iA != 65535) {
                http2Connection.P.q(0, iA - 65535);
            }
            TaskQueue.c(http2Connection.k.d(), http2Connection.c, http2Connection.Q, 6);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Connection{");
        Route route = this.d;
        sb.append(route.a.h.d);
        sb.append(':');
        sb.append(route.a.h.e);
        sb.append(", proxy=");
        sb.append(route.b);
        sb.append(" hostAddress=");
        sb.append(route.c);
        sb.append(" cipherSuite=");
        Handshake handshake = this.k;
        sb.append(handshake != null ? handshake.b : "none");
        sb.append(" protocol=");
        sb.append(this.n);
        sb.append('}');
        return sb.toString();
    }
}
