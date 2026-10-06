package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ij1 {
    public static final gv7 a = new gv7(new cl(5));

    public static Socket a(kj1 kj1Var, SocketFactory socketFactory) throws Exception {
        Socket socketCreateSocket = socketFactory.createSocket();
        try {
            socketCreateSocket.connect(new InetSocketAddress(kj1Var.a, kj1Var.b), 250);
            socketCreateSocket.setSoTimeout(250);
            return socketCreateSocket;
        } catch (Exception e) {
            socketCreateSocket.close();
            throw e;
        }
    }

    public static String b(String str) {
        String string;
        cv4 cv4Var = new cv4(str);
        String strG0 = null;
        String str2 = (String) (!cv4Var.hasNext() ? null : cv4Var.next());
        if (str2 != null && (string = nq7.H0(str2).toString()) != null) {
            strG0 = nq7.G0(160, string);
        }
        return strG0 == null ? "" : strG0;
    }

    public static bj1 c(cj1 cj1Var, SocketFactory socketFactory) {
        Object bn6Var;
        Object aj1Var;
        String simpleName;
        int i = cj1Var.a;
        kj1 kj1Var = cj1Var.b;
        long jNanoTime = System.nanoTime();
        try {
            int i2 = fj1.b[kj1Var.c.ordinal()];
            if (i2 == 1) {
                Socket socketA = a(kj1Var, socketFactory);
                try {
                    bn6Var = new aj1("tcp-open", true);
                    socketA.close();
                    aj1Var = bn6Var;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(socketA, th);
                        throw th2;
                    }
                }
            } else if (i2 == 2) {
                aj1Var = d(kj1Var, socketFactory, new zi1(0));
            } else if (i2 != 3) {
                aj1Var = i2 != 4 ? new aj1("unsupported", false) : g(kj1Var, socketFactory);
            } else {
                int i3 = fj1.a[kj1Var.d.ordinal()];
                if (i3 != 1) {
                    aj1Var = i3 != 2 ? d(kj1Var, socketFactory, new gf1(1)) : e(kj1Var, socketFactory);
                } else {
                    aj1Var = f(kj1Var, socketFactory);
                }
            }
        } catch (Throwable th3) {
            bn6Var = new bn6(th3);
        }
        Throwable thA = en6.a(aj1Var);
        if (thA != null) {
            if (thA instanceof ConnectException) {
                simpleName = "connect-failed";
            } else if (thA instanceof SocketTimeoutException) {
                simpleName = "timeout";
            } else {
                simpleName = thA.getClass().getSimpleName();
                if (nq7.j0(simpleName)) {
                    simpleName = "probe-failed";
                }
            }
            aj1Var = new aj1(simpleName, false);
        }
        aj1 aj1Var2 = (aj1) aj1Var;
        boolean z = aj1Var2.a;
        long jNanoTime2 = (System.nanoTime() - jNanoTime) / 1000000;
        return new bj1(i, new jj1(kj1Var, z, jNanoTime2 >= 0 ? jNanoTime2 : 0L, aj1Var2.b));
    }

    public static aj1 d(kj1 kj1Var, SocketFactory socketFactory, mt3 mt3Var) throws Exception {
        Socket socketA = a(kj1Var, socketFactory);
        try {
            String strB = b(h(socketA, 512, true));
            boolean zBooleanValue = ((Boolean) mt3Var.invoke(strB)).booleanValue();
            if (nq7.j0(strB)) {
                strB = "tcp-open-no-banner";
            }
            aj1 aj1Var = new aj1(strB, zBooleanValue);
            socketA.close();
            return aj1Var;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(socketA, th);
                throw th2;
            }
        }
    }

    public static aj1 e(kj1 kj1Var, SocketFactory socketFactory) throws Exception {
        Socket socketA = a(kj1Var, socketFactory);
        try {
            String strB = b(h(socketA, 512, true));
            if (!uq7.V(strB, "220", false)) {
                if (nq7.j0(strB)) {
                    strB = "tcp-open-no-banner";
                }
                aj1 aj1Var = new aj1(strB, false);
                socketA.close();
                return aj1Var;
            }
            OutputStream outputStream = socketA.getOutputStream();
            Charset charset = StandardCharsets.ISO_8859_1;
            charset.getClass();
            byte[] bytes = "AUTH TLS\r\n".getBytes(charset);
            bytes.getClass();
            outputStream.write(bytes);
            socketA.getOutputStream().flush();
            String strB2 = b(h(socketA, 512, true));
            boolean zV = uq7.V(strB2, "234", false);
            if (nq7.j0(strB2)) {
                strB2 = "ftpes-auth-no-response";
            }
            aj1 aj1Var2 = new aj1(strB2, zV);
            socketA.close();
            return aj1Var2;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(socketA, th);
                throw th2;
            }
        }
    }

    public static aj1 f(kj1 kj1Var, SocketFactory socketFactory) throws Exception {
        Socket socketA = a(kj1Var, socketFactory);
        try {
            Object value = a.getValue();
            value.getClass();
            Socket socketCreateSocket = ((SSLSocketFactory) value).createSocket(socketA, kj1Var.a, kj1Var.b, true);
            socketCreateSocket.getClass();
            try {
                socketCreateSocket.setSoTimeout(250);
                String strB = b(h(socketCreateSocket, 512, true));
                boolean zV = uq7.V(strB, "220", false);
                if (nq7.j0(strB)) {
                    strB = "tls-open-no-banner";
                }
                aj1 aj1Var = new aj1(strB, zV);
                socketCreateSocket.close();
                socketA.close();
                return aj1Var;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(socketCreateSocket, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                rs9.c(socketA, th3);
                throw th4;
            }
        }
    }

    public static aj1 g(kj1 kj1Var, SocketFactory socketFactory) throws Exception {
        Socket socketCreateSocket;
        String strB;
        Socket socketA = a(kj1Var, socketFactory);
        int i = kj1Var.b;
        String str = kj1Var.a;
        try {
            boolean z = true;
            if (kj1Var.d == fd1.HTTPS) {
                Object value = a.getValue();
                value.getClass();
                socketCreateSocket = ((SSLSocketFactory) value).createSocket(socketA, str, i, true);
                socketCreateSocket.getClass();
            } else {
                socketCreateSocket = socketA;
            }
            try {
                String strConcat = kj1Var.e;
                String str2 = "/";
                if (strConcat != null) {
                    if (!uq7.V(strConcat, "/", false)) {
                        strConcat = "/".concat(strConcat);
                    }
                    str2 = strConcat;
                }
                OutputStream outputStream = socketCreateSocket.getOutputStream();
                Charset charset = StandardCharsets.ISO_8859_1;
                charset.getClass();
                byte[] bytes = ("OPTIONS " + str2 + " HTTP/1.1\r\nHost: " + str + ":" + i + "\r\nUser-Agent: SwiftBackupLocalDiscovery\r\nConnection: close\r\n\r\n").getBytes(charset);
                bytes.getClass();
                outputStream.write(bytes);
                socketCreateSocket.getOutputStream().flush();
                String strH = h(socketCreateSocket, 4096, false);
                if (!uq7.V(strH, "HTTP/", false) || nq7.j0(i(strH))) {
                    z = false;
                }
                if (z) {
                    strB = i(strH);
                } else if (uq7.V(strH, "HTTP/", false)) {
                    strB = b(strH);
                } else {
                    strB = b(strH);
                    if (nq7.j0(strB)) {
                        strB = "tcp-open-no-http-response";
                    }
                }
                aj1 aj1Var = new aj1(strB, z);
                socketCreateSocket.close();
                socketA.close();
                return aj1Var;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(socketCreateSocket, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                rs9.c(socketA, th3);
                throw th4;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0040 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x0042 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x004d A[EDGE_INSN: B:25:0x004d->B:16:0x004d BREAK  A[LOOP:0: B:3:0x0009->B:26:0x0009], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:28:0x0009 A[SYNTHETIC] */
    public static String h(Socket socket, int i, boolean z) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[512];
        while (byteArrayOutputStream.size() < i) {
            try {
                int i2 = socket.getInputStream().read(bArr);
                if (i2 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, Math.min(i2, i - byteArrayOutputStream.size()));
                String string = byteArrayOutputStream.toString(StandardCharsets.ISO_8859_1.name());
                if (z) {
                    string.getClass();
                    if (nq7.Z(string, "\n", false)) {
                        break;
                    }
                    if (!z) {
                        string.getClass();
                        if (nq7.Z(string, "\r\n\r\n", false)) {
                            break;
                        }
                    }
                } else if (!z) {
                    string.getClass();
                    if (nq7.Z(string, "\r\n\r\n", false)) {
                        break;
                        break;
                    }
                }
            } catch (SocketTimeoutException unused) {
            }
        }
        String string2 = byteArrayOutputStream.toString(StandardCharsets.ISO_8859_1.name());
        string2.getClass();
        return string2;
    }

    public static String i(String str) {
        String strG0;
        Object next;
        String string;
        String str2;
        String strC0 = nq7.C0(str, "\r\n\r\n", str);
        cv4 cv4Var = new cv4(nq7.C0(strC0, "\n\n", strC0));
        do {
            strG0 = null;
            if (!cv4Var.hasNext()) {
                next = null;
                break;
            }
            next = cv4Var.next();
            str2 = (String) next;
            if (uq7.V(str2, "DAV:", true) || nq7.Z(str2, "Nextcloud", true) || nq7.Z(str2, "ownCloud", true)) {
                break;
            }
        } while (!nq7.Z(str2, "SabreDAV", true));
        String str3 = (String) next;
        if (str3 != null && (string = nq7.H0(str3).toString()) != null) {
            strG0 = nq7.G0(160, string);
        }
        return strG0 == null ? "" : strG0;
    }
}
