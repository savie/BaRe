package defpackage;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;
import java.util.stream.Stream;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class k23 extends d23 {
    public static final String[] W = {"C", "E", "S", "P"};
    public final boolean P;
    public String[] U;
    private SSLContext context;
    private Socket plainSocket;
    public final String R = "TLS";
    public final boolean S = true;
    public final boolean T = true;
    public pb8 V = z85.e;
    public final String Q = "TLS";

    public k23(boolean z) {
        this.P = z;
    }

    public static void y(Socket socket) throws d84 {
        Closeable[] closeableArr = {socket, null};
        int i = n84.a;
        final c6 c6Var = new c6(9);
        i84 i84VarA = i84.a(Stream.of((Object[]) closeableArr));
        final j84 j84Var = new j84();
        i84VarA.getClass();
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicInteger atomicInteger = new AtomicInteger();
        i84VarA.a.forEach(new Consumer() { // from class: h84
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AtomicInteger atomicInteger2 = atomicInteger;
                try {
                    Closeable closeable = (Closeable) obj;
                    if (closeable != null) {
                        closeable.close();
                    }
                } catch (IOException e) {
                    AtomicReference atomicReference2 = atomicReference;
                    if (atomicReference2.get() == null) {
                        atomicReference2.set(new ArrayList());
                    }
                    ((List) atomicReference2.get()).add((IOException) j84Var.apply(Integer.valueOf(atomicInteger2.get()), e));
                }
                atomicInteger2.incrementAndGet();
            }
        });
        List list = (List) atomicReference.get();
        if ((list != null ? list.size() : 0) != 0) {
            throw new d84(null, list);
        }
    }

    public abstract void A();

    @Override // defpackage.d23, defpackage.yi7
    public final void b() throws IOException {
        boolean z = this.P;
        if (z) {
            this.b.setSoTimeout(this.a);
            A();
        }
        super.b();
        if (z) {
            return;
        }
        int iM = m("AUTH", this.R);
        if (334 != iM && 234 != iM) {
            throw new SSLException(i());
        }
        A();
    }

    @Override // defpackage.z13
    public final int m(String str, String str2) throws IOException {
        int iM = super.m(str, str2);
        if (!"CCC".equals(str)) {
            return iM;
        }
        if (200 != iM) {
            throw new SSLException(i());
        }
        this.b.close();
        this.b = this.plainSocket;
        this.r = new BufferedReader(new InputStreamReader(this.b.getInputStream(), this.o));
        this.s = new BufferedWriter(new OutputStreamWriter(this.b.getOutputStream(), this.o));
        return iM;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x005c A[Catch: all -> 0x0047, TryCatch #1 {all -> 0x0047, blocks: (B:11:0x0030, B:19:0x005c, B:24:0x006b, B:25:0x006e, B:27:0x0074, B:16:0x0049), top: B:71:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:21:0x0066 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x0068  */
    /* JADX WARN: Code duplicated, block: B:23:0x0069 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x006b A[Catch: all -> 0x0047, TryCatch #1 {all -> 0x0047, blocks: (B:11:0x0030, B:19:0x005c, B:24:0x006b, B:25:0x006e, B:27:0x0074, B:16:0x0049), top: B:71:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0074 A[Catch: all -> 0x0047, TRY_LEAVE, TryCatch #1 {all -> 0x0047, blocks: (B:11:0x0030, B:19:0x005c, B:24:0x006b, B:25:0x006e, B:27:0x0074, B:16:0x0049), top: B:71:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00de  */
    @Override // defpackage.d23
    public Socket n(String str, String str2) throws IOException {
        Socket socketAccept;
        ArrayList arrayList = this.l;
        int i = this.u;
        Socket socket = null;
        if (i == 0 || i == 2) {
            boolean z = this.b.getInetAddress() instanceof Inet6Address;
            int iF = z85.F(this.v);
            if (this.u == 0) {
                ServerSocket serverSocketCreateServerSocket = this.g.createServerSocket(0, 1, this.b.getLocalAddress());
                Socket socket2 = this.b;
                try {
                    if (z) {
                        if (k55.x(g(socket2.getLocalAddress(), serverSocketCreateServerSocket.getLocalPort()))) {
                            if (!k55.y(m(str, str2))) {
                                if (iF >= 0) {
                                    serverSocketCreateServerSocket.setSoTimeout(iF);
                                }
                                socketAccept = serverSocketCreateServerSocket.accept();
                                if (iF >= 0) {
                                    socketAccept.setSoTimeout(iF);
                                }
                                serverSocketCreateServerSocket.close();
                                if (!this.A && !f(socketAccept)) {
                                    InetAddress inetAddress = socketAccept.getInetAddress();
                                    y(socketAccept);
                                    q.k("Host attempting data connection ", inetAddress.getHostAddress(), " is not same as server ", this.b.getInetAddress().getHostAddress());
                                    return null;
                                }
                                socket = socketAccept;
                            } else if (serverSocketCreateServerSocket != null) {
                            }
                        }
                    } else if (k55.x(j(socket2.getLocalAddress(), serverSocketCreateServerSocket.getLocalPort()))) {
                        if (!k55.y(m(str, str2))) {
                            if (iF >= 0) {
                                serverSocketCreateServerSocket.setSoTimeout(iF);
                            }
                            socketAccept = serverSocketCreateServerSocket.accept();
                            if (iF >= 0) {
                                socketAccept.setSoTimeout(iF);
                            }
                            serverSocketCreateServerSocket.close();
                            if (!this.A) {
                            }
                            socket = socketAccept;
                        } else if (serverSocketCreateServerSocket != null) {
                        }
                    }
                    serverSocketCreateServerSocket.close();
                } catch (Throwable th) {
                    if (serverSocketCreateServerSocket != null) {
                        try {
                            serverSocketCreateServerSocket.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } else {
                if (z && l(9) == 229) {
                    o((String) arrayList.get(0));
                } else if (!z && l(23) == 227) {
                    p((String) arrayList.get(0));
                }
                Socket socketCreateSocket = this.f.createSocket();
                if (iF >= 0) {
                    socketCreateSocket.setSoTimeout(iF);
                }
                socketCreateSocket.connect(new InetSocketAddress(this.x, this.w), this.h);
                if (k55.y(m(str, str2))) {
                    socketAccept = socketCreateSocket;
                    if (!this.A) {
                    }
                    socket = socketAccept;
                } else {
                    y(socketCreateSocket);
                }
            }
        }
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            boolean z2 = this.T;
            sSLSocket.setUseClientMode(z2);
            sSLSocket.setEnableSessionCreation(this.S);
            if (!z2) {
                sSLSocket.setNeedClientAuth(false);
                sSLSocket.setWantClientAuth(false);
            }
            String[] strArr = this.U;
            if (strArr != null) {
                sSLSocket.setEnabledProtocols(strArr);
            }
            sSLSocket.startHandshake();
        }
        return socket;
    }

    @Override // defpackage.d23
    public final void q() throws IOException {
        super.q();
        Socket socket = this.plainSocket;
        if (socket != null) {
            socket.close();
        }
        this.f = yi7.i;
        this.g = yi7.j;
    }

    public final void z() throws IOException {
        for (int i = 0; i < 4; i++) {
            if (W[i].equals("P")) {
                if (200 != m("PROT", "P")) {
                    throw new SSLException(i());
                }
                if ("C".equals("P")) {
                    this.f = yi7.i;
                    this.g = yi7.j;
                    return;
                }
                this.f = new m23(this.context);
                this.g = new l23(this.context);
                if (this.context == null) {
                    String str = this.Q;
                    pb8 pb8Var = this.V;
                    TrustManager[] trustManagerArr = pb8Var == null ? null : new TrustManager[]{pb8Var};
                    try {
                        SSLContext sSLContext = SSLContext.getInstance(str);
                        sSLContext.init(null, trustManagerArr, null);
                        this.context = sSLContext;
                        return;
                    } catch (GeneralSecurityException e) {
                        throw new IOException("Could not initialize SSL context", e);
                    }
                }
                return;
            }
        }
        c6.b();
    }
}
