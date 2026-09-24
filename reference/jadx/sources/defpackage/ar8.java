package defpackage;

import android.net.SSLCertificateSocketFactory;
import android.net.SSLSessionCache;
import android.util.Base64;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import java.io.File;
import java.io.IOException;
import java.net.Socket;
import java.net.URI;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ar8 {
    public static final AtomicInteger l = new AtomicInteger(0);
    public static final Charset m = Charset.forName("UTF-8");
    public static final ThreadFactory n = Executors.defaultThreadFactory();
    public static final b05 o = new b05();
    public volatile int a = 1;
    public volatile Socket b = null;
    public c00 c = null;
    public final URI d;
    public final String e;
    public final cr8 f;
    public final dr8 g;
    public final dr h;
    public final u00 i;
    public final int j;
    public final Thread k;

    public ar8(yr1 yr1Var, URI uri, HashMap map) {
        int iIncrementAndGet = l.incrementAndGet();
        this.j = iIncrementAndGet;
        int i = 4;
        this.k = n.newThread(new hm0(this, i));
        this.d = uri;
        this.e = (String) yr1Var.k;
        this.i = new u00(i, (ub) yr1Var.f, "WebSocket", fz5.j(iIncrementAndGet, "sk_"));
        dr drVar = new dr(6);
        drVar.c = null;
        drVar.b = uri;
        drVar.d = map;
        byte[] bArr = new byte[16];
        for (int i2 = 0; i2 < 16; i2++) {
            bArr[i2] = (byte) ((Math.random() * 255.0d) + 0.0d);
        }
        drVar.c = Base64.encodeToString(bArr, 2);
        this.h = drVar;
        cr8 cr8Var = new cr8();
        cr8Var.a = null;
        cr8Var.b = null;
        cr8Var.c = null;
        cr8Var.d = new byte[OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS];
        cr8Var.f = false;
        cr8Var.b = this;
        this.f = cr8Var;
        this.g = new dr8(this, this.j);
    }

    public final synchronized void a() {
        try {
            int iA = dj7.A(this.a);
            if (iA == 0) {
                this.a = 5;
                return;
            }
            if (iA == 1) {
                b();
                return;
            }
            if (iA != 2) {
                if (iA != 3) {
                    if (iA != 4) {
                        return;
                    } else {
                        return;
                    }
                }
                return;
            }
            try {
                this.a = 4;
                this.g.c = true;
                this.g.b((byte) 8, new byte[0]);
            } catch (IOException e) {
                this.c.n(new br8("Failed to send close frame", e));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b() {
        int i = 5;
        if (this.a == 5) {
            return;
        }
        this.f.f = true;
        this.g.c = true;
        if (this.b != null) {
            try {
                this.b.close();
            } catch (Exception e) {
                this.c.n(new br8("Failed to close", e));
            }
        }
        this.a = 5;
        c00 c00Var = this.c;
        ((nr8) c00Var.c).i.execute(new w7(c00Var, i));
    }

    public final synchronized void c() {
        if (this.a != 1) {
            this.c.n(new br8("connect() already called"));
            a();
            return;
        }
        b05 b05Var = o;
        Thread thread = this.k;
        String str = "TubeSockReader-" + this.j;
        b05Var.getClass();
        thread.setName(str);
        this.a = 2;
        this.k.start();
    }

    public final Socket d() {
        URI uri = this.d;
        String scheme = uri.getScheme();
        String host = uri.getHost();
        int port = uri.getPort();
        if (scheme != null && scheme.equals("ws")) {
            if (port == -1) {
                port = 80;
            }
            try {
                return new Socket(host, port);
            } catch (UnknownHostException e) {
                throw new br8(xs1.j("unknown host: ", host), e);
            } catch (IOException e2) {
                throw new br8("error while creating socket to " + uri, e2);
            }
        }
        if (scheme == null || !scheme.equals("wss")) {
            throw new br8(xs1.j("unsupported protocol: ", scheme));
        }
        if (port == -1) {
            port = 443;
        }
        String str = this.e;
        SSLSessionCache sSLSessionCache = null;
        if (str != null) {
            try {
                sSLSessionCache = new SSLSessionCache(new File(str));
            } catch (IOException e3) {
                this.i.c("Failed to initialize SSL session cache", e3, new Object[0]);
            }
        }
        try {
            SSLSocket sSLSocket = (SSLSocket) SSLCertificateSocketFactory.getDefault(60000, sSLSessionCache).createSocket(host, port);
            if (HttpsURLConnection.getDefaultHostnameVerifier().verify(host, sSLSocket.getSession())) {
                return sSLSocket;
            }
            throw new br8("Error while verifying secure socket to " + uri);
        } catch (UnknownHostException e4) {
            throw new br8(xs1.j("unknown host: ", host), e4);
        } catch (IOException e5) {
            throw new br8("error while creating secure socket to " + uri, e5);
        }
    }

    public final synchronized void e(byte b, byte[] bArr) {
        if (this.a != 3) {
            this.c.n(new br8("error while sending data: not connected"));
        } else {
            try {
                this.g.b(b, bArr);
            } catch (IOException e) {
                this.c.n(new br8("Failed to send frame", e));
                a();
            }
        }
    }
}
