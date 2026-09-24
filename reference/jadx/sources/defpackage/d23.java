package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.time.Duration;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import java.util.Random;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class d23 extends z13 implements or1 {
    public static final Pattern O = Pattern.compile("(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})");
    public final boolean A;
    public final ie2 B;
    public int C;
    public boolean D;
    public String E;
    public h23 F;
    public e23 G;
    public q23 H;
    public Duration I;
    public Duration J;
    public final fu K;
    public boolean L;
    public HashMap M;
    public boolean N;
    public int u;
    public Duration v;
    public int w;
    public String x;
    public int y;
    public int z;

    public d23() {
        this.h = 60000;
        Charset.defaultCharset();
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.a = 0;
        this.f = yi7.i;
        this.g = yi7.j;
        this.q = true;
        this.l = new ArrayList();
        this.m = false;
        this.n = null;
        this.o = z13.t;
        this.p = new ba6(this);
        this.v = Duration.ofMillis(-1L);
        new Random();
        this.A = true;
        this.B = new ie2();
        this.I = Duration.ZERO;
        this.J = Duration.ofSeconds(1L);
        this.K = new fu(this);
        this.N = Boolean.getBoolean("org.apache.commons.net.ftp.ipAddressFromPasvResponse");
        s();
    }

    @Override // defpackage.or1
    public final void a(e23 e23Var) {
        this.G = e23Var;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x005a */
    @Override // defpackage.yi7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b() throws java.net.SocketException {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.d23.b():void");
    }

    public Socket n(String str, String str2) throws IOException {
        Socket socketAccept;
        ArrayList arrayList = this.l;
        int i = this.u;
        if (i == 0 || i == 2) {
            boolean z = this.b.getInetAddress() instanceof Inet6Address;
            int iF = z85.F(this.v);
            if (this.u != 0) {
                if (z && l(9) == 229) {
                    o((String) arrayList.get(0));
                } else if (!z && l(23) == 227) {
                    p((String) arrayList.get(0));
                }
                Socket socketCreateSocket = this.f.createSocket();
                if (this.z == 13) {
                    socketCreateSocket = new og2(socketCreateSocket);
                }
                if (iF >= 0) {
                    socketCreateSocket.setSoTimeout(iF);
                }
                socketCreateSocket.connect(new InetSocketAddress(this.x, this.w), this.h);
                if (!k55.y(m(str, str2))) {
                    socketCreateSocket.close();
                    return null;
                }
                socketAccept = socketCreateSocket;
                if (this.A) {
                }
                return socketAccept;
            }
            ServerSocket serverSocketCreateServerSocket = this.g.createServerSocket(0, 1, this.b.getLocalAddress());
            Socket socket = this.b;
            try {
                if (z) {
                    if (!k55.x(g(socket.getLocalAddress(), serverSocketCreateServerSocket.getLocalPort()))) {
                        serverSocketCreateServerSocket.close();
                        return null;
                    }
                } else if (!k55.x(j(socket.getLocalAddress(), serverSocketCreateServerSocket.getLocalPort()))) {
                    serverSocketCreateServerSocket.close();
                    return null;
                }
                if (k55.y(m(str, str2))) {
                    if (iF >= 0) {
                        serverSocketCreateServerSocket.setSoTimeout(iF);
                    }
                    socketAccept = serverSocketCreateServerSocket.accept();
                    if (this.z == 13) {
                        socketAccept = new og2(socketAccept);
                    }
                    if (iF >= 0) {
                        socketAccept.setSoTimeout(iF);
                    }
                    serverSocketCreateServerSocket.close();
                    if (this.A || f(socketAccept)) {
                        return socketAccept;
                    }
                    InetAddress inetAddress = socketAccept.getInetAddress();
                    String hostAddress = inetAddress != null ? inetAddress.getHostAddress() : null;
                    InetAddress inetAddress2 = this.b.getInetAddress();
                    String hostAddress2 = inetAddress2 != null ? inetAddress2.getHostAddress() : null;
                    n84.b(socketAccept);
                    y5.m(dj7.l("Host attempting data connection ", hostAddress, " is not same as server ", hostAddress2));
                    return null;
                }
                if (serverSocketCreateServerSocket != null) {
                    serverSocketCreateServerSocket.close();
                    return null;
                }
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
        }
        return null;
    }

    public final void o(String str) throws il2 {
        String strTrim = str.substring(str.indexOf(40) + 1, str.indexOf(41)).trim();
        char cCharAt = strTrim.charAt(0);
        char cCharAt2 = strTrim.charAt(1);
        char cCharAt3 = strTrim.charAt(2);
        char cCharAt4 = strTrim.charAt(strTrim.length() - 1);
        if (cCharAt != cCharAt2 || cCharAt2 != cCharAt3 || cCharAt3 != cCharAt4) {
            throw new il2("Could not parse extended passive host information.\nServer Reply: ".concat(strTrim));
        }
        try {
            int i = Integer.parseInt(strTrim.substring(3, strTrim.length() - 1));
            this.x = this.b.getInetAddress().getHostAddress();
            this.w = i;
        } catch (NumberFormatException unused) {
            throw new il2("Could not parse extended passive host information.\nServer Reply: ".concat(strTrim));
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0070  */
    public final void p(String str) throws il2 {
        String hostAddress;
        Matcher matcher = O.matcher(str);
        if (!matcher.find()) {
            throw new il2(xs1.j("Could not parse passive host information.\nServer Reply: ", str));
        }
        String hostAddress2 = "0,0,0,0".equals(matcher.group(1)) ? this.b.getInetAddress().getHostAddress() : matcher.group(1).replace(',', '.');
        try {
            int i = 3;
            int i2 = Integer.parseInt(matcher.group(3)) | (Integer.parseInt(matcher.group(2)) << 8);
            if (this.N) {
                fu fuVar = this.K;
                if (fuVar != null) {
                    try {
                        if (InetAddress.getByName(hostAddress2).isSiteLocalAddress()) {
                            InetAddress inetAddress = ((d23) fuVar.a).b.getInetAddress();
                            if (inetAddress.isSiteLocalAddress()) {
                                hostAddress = hostAddress2;
                            } else {
                                hostAddress = inetAddress.getHostAddress();
                            }
                        } else {
                            hostAddress = hostAddress2;
                        }
                        if (!hostAddress2.equals(hostAddress)) {
                            String str2 = "[Replacing PASV mode reply address " + this.x + " with " + hostAddress + "]\n";
                            ba6 ba6Var = this.p;
                            vy4 vy4Var = ba6Var.b;
                            if (vy4Var.a.size() != 0) {
                                vy4Var.forEach(new kl0(new y96(ba6Var.a, 0, str2), i));
                            }
                            hostAddress2 = hostAddress;
                        }
                    } catch (UnknownHostException unused) {
                        throw new il2(xs1.j("Could not parse passive host information.\nServer Reply: ", str));
                    }
                }
            } else {
                Socket socket = this.b;
                hostAddress2 = socket == null ? null : socket.getInetAddress().getHostAddress();
            }
            this.x = hostAddress2;
            this.w = i2;
        } catch (NumberFormatException unused2) {
            throw new il2(xs1.j("Could not parse passive port information.\nServer Reply: ", str));
        }
    }

    public void q() {
        n84.b(this.b);
        n84.b(this.d);
        n84.b(this.e);
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.r = null;
        this.s = null;
        this.m = false;
        this.n = null;
        s();
    }

    public final boolean r(String str) {
        String strSubstring;
        String strSubstring2;
        if (this.M == null) {
            int iL = l(10);
            if (iL == 530) {
                return false;
            }
            boolean zX = k55.x(iL);
            this.M = new HashMap();
            if (!zX) {
                return false;
            }
            for (String str2 : this.l) {
                if (str2.startsWith(TokenAuthenticationScheme.SCHEME_DELIMITER)) {
                    int iIndexOf = str2.indexOf(32, 1);
                    if (iIndexOf > 0) {
                        strSubstring = str2.substring(1, iIndexOf);
                        strSubstring2 = str2.substring(iIndexOf + 1);
                    } else {
                        strSubstring = str2.substring(1);
                        strSubstring2 = "";
                    }
                    ((Set) this.M.computeIfAbsent(strSubstring.toUpperCase(Locale.ENGLISH), new a23())).add(strSubstring2);
                }
            }
        }
        return this.M.containsKey(str.toUpperCase(Locale.ENGLISH));
    }

    public final void s() {
        this.u = 0;
        this.x = null;
        this.w = -1;
        this.y = 0;
        this.z = 10;
        this.E = null;
        this.F = null;
        this.M = null;
    }

    public final g23[] t(String str) throws IOException {
        String property;
        int i = 1;
        if (this.F == null) {
            e23 e23Var = this.G;
            ie2 ie2Var = this.B;
            if (e23Var == null || e23Var.a.isEmpty()) {
                String property2 = System.getProperty("org.apache.commons.net.ftp.systemType");
                if (property2 == null) {
                    if (this.E == null) {
                        if (k55.x(l(40))) {
                            this.E = ((String) dj7.e(this.l, 1)).substring(4);
                        } else {
                            String property3 = System.getProperty("org.apache.commons.net.ftp.systemType.default");
                            if (property3 == null) {
                                c6.k(i(), "Unable to determine system type - response: ");
                                return null;
                            }
                            this.E = property3;
                        }
                    }
                    property2 = this.E;
                    Properties properties = c23.a;
                    if (properties != null && (property = properties.getProperty(property2)) != null) {
                        property2 = property;
                    }
                }
                if (this.G != null) {
                    e23 e23Var2 = new e23(property2, this.G);
                    ie2Var.getClass();
                    this.F = ie2.a(property2, e23Var2);
                } else {
                    ie2Var.getClass();
                    if (property2 == null) {
                        throw new fx5("Parser key cannot be null");
                    }
                    this.F = ie2.a(property2, null);
                }
            } else {
                e23 e23Var3 = this.G;
                ie2Var.getClass();
                this.F = ie2.a(e23Var3.a, e23Var3);
                String str2 = this.G.a;
            }
        }
        h23 h23Var = this.F;
        if (this.D) {
            str = str != null ? dj7.n(new StringBuilder(str.length() + 3), "-a ", str) : "-a";
        }
        Socket socketN = n("LIST", str);
        j23 j23Var = new j23(h23Var, this.G);
        if (socketN != null) {
            try {
                j23Var.b(socketN.getInputStream(), this.o);
                n84.b(socketN);
                h(true);
            } catch (Throwable th) {
                n84.b(socketN);
                throw th;
            }
        }
        return (g23[]) ((List) ((LinkedList) j23Var.c).stream().map(new rm0(j23Var, i)).filter(new i23(0)).collect(Collectors.toList())).toArray(j23.e);
    }

    public final boolean u(String str, String str2) {
        m("USER", str);
        if (k55.x(this.k)) {
            return true;
        }
        int i = this.k;
        if (i < 300 || i >= 400) {
            return false;
        }
        return k55.x(m("PASS", str2));
    }

    public final String v() {
        if (l(25) != 257) {
            return null;
        }
        String strSubstring = ((String) dj7.e(this.l, 1)).substring(4);
        if (!strSubstring.startsWith("\"")) {
            return strSubstring;
        }
        StringBuilder sb = new StringBuilder(strSubstring.length());
        boolean z = false;
        for (int i = 1; i < strSubstring.length(); i++) {
            char cCharAt = strSubstring.charAt(i);
            if (cCharAt != '\"') {
                if (z) {
                    return sb.toString();
                }
                sb.append(cCharAt);
            } else if (z) {
                sb.append(cCharAt);
                z = false;
            } else {
                z = true;
            }
        }
        return z ? sb.toString() : strSubstring;
    }

    public final zi7 w(String str) throws IOException {
        InputStream inputStream;
        Socket socketN = n("RETR", str);
        if (socketN == null) {
            return null;
        }
        if (this.y == 0) {
            InputStream inputStream2 = socketN.getInputStream();
            inputStream = new us3(this.C > 0 ? new BufferedInputStream(inputStream2, this.C) : new BufferedInputStream(inputStream2), us3.c.length + 1);
        } else {
            inputStream = socketN.getInputStream();
        }
        return new zi7(socketN, inputStream);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00af  */
    public final boolean x(String str, BufferedInputStream bufferedInputStream) throws Throwable {
        b23 b23Var;
        FilterOutputStream bufferedOutputStream;
        uw1 uw1Var;
        Socket socketN = n("STOR", str);
        if (socketN == null) {
            return false;
        }
        b23 b23Var2 = null;
        b23Var2 = null;
        b23Var2 = null;
        b23Var2 = null;
        b23Var2 = null;
        FilterOutputStream filterOutputStream = null;
        try {
            try {
                if (this.y == 0) {
                    OutputStream outputStream = socketN.getOutputStream();
                    t48 t48Var = new t48(this.C > 0 ? new BufferedOutputStream(outputStream, this.C) : new BufferedOutputStream(outputStream));
                    t48Var.a = false;
                    bufferedOutputStream = t48Var;
                } else {
                    OutputStream outputStream2 = socketN.getOutputStream();
                    bufferedOutputStream = this.C > 0 ? new BufferedOutputStream(outputStream2, this.C) : new BufferedOutputStream(outputStream2);
                }
                try {
                    Duration duration = this.I;
                    if (duration != null && !duration.isNegative() && !duration.isZero()) {
                        b23Var2 = new b23(this, this.I, this.J);
                    }
                    int i = this.C;
                    q23 q23Var = this.H;
                    if (b23Var2 == null) {
                        uw1Var = q23Var;
                    } else if (q23Var == null) {
                        uw1Var = b23Var2;
                    } else {
                        tw1 tw1Var = new tw1();
                        vy4 vy4Var = tw1Var.a;
                        vy4Var.a.add(b23Var2);
                        q23 q23Var2 = this.H;
                        if (q23Var2 != null) {
                            vy4Var.a.add(q23Var2);
                            uw1Var = tw1Var;
                        } else {
                            vy4Var.getClass();
                            uw1Var = tw1Var;
                        }
                    }
                    ho6.f(bufferedInputStream, bufferedOutputStream, i, uw1Var);
                    bufferedOutputStream.close();
                    socketN.close();
                    boolean zX = k55.x(h(true));
                    if (b23Var2 != null) {
                        b23Var2.b();
                    }
                    return zX;
                } catch (IOException e) {
                    e = e;
                    b23Var = b23Var2;
                    filterOutputStream = bufferedOutputStream;
                    try {
                        n84.b(filterOutputStream);
                        n84.b(socketN);
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        b23Var2 = b23Var;
                        if (b23Var2 != null) {
                            b23Var2.b();
                        }
                        throw th;
                    }
                }
            } catch (IOException e2) {
                e = e2;
                b23Var = null;
            }
        } catch (Throwable th2) {
            th = th2;
            if (b23Var2 != null) {
                b23Var2.b();
            }
            throw th;
        }
    }
}
