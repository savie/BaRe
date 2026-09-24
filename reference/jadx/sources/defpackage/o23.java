package defpackage;

import android.util.Log;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.net.ConnectException;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o23 extends mj1 {
    public d23 d;
    public boolean e;
    public boolean f;
    public boolean g;
    public boolean h;
    public boolean i;
    public ys3 j;
    public boolean k;
    public final dd1 c = dd1.FTP;
    public final n23 l = new n23();

    public static void F(String str) {
        if (str.length() <= 0 || nq7.j0(str)) {
            g84.f("Invalid path: ".concat(str));
        }
    }

    public final g23 A(String str) throws Exception {
        l30 l30Var = new l30(7, this, str);
        Exception e = null;
        for (int i = 0; i < 5; i++) {
            try {
                return (g23) l30Var.invoke();
            } catch (Exception e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
        throw new RuntimeException("Failed action with tag=getFile after retries=5");
    }

    public final g23[] B(d23 d23Var, String str) {
        boolean z = d23Var.D;
        if (this.i && z) {
            d23Var.D = false;
        }
        try {
            try {
                g23[] g23VarArrC = C(d23Var, str);
                if (!this.i && z && d23Var.k == 550) {
                    d23Var.D = false;
                    g23[] g23VarArrC2 = C(d23Var, str);
                    if (k55.x(d23Var.k)) {
                        vr6.i$default(vr6.INSTANCE, "FTPService", "LIST -a is unsupported by this FTP server; using LIST for subsequent listings", null, 4, null);
                        this.i = true;
                    }
                    d23Var.D = z;
                    return g23VarArrC2;
                }
                d23Var.D = z;
                return g23VarArrC;
            } catch (Exception e) {
                x(d23Var, "listFilesCompat: Discarding FTP client after failed listing at path=" + str);
                throw e;
            }
        } catch (Throwable th) {
            d23Var.D = z;
            throw th;
        }
    }

    public final g23[] C(d23 d23Var, String str) throws IOException {
        if (str != null) {
            if (str.length() <= 0) {
                str = null;
            }
            if (str != null) {
                for (int i = 0; i < str.length(); i++) {
                    if (ly8.C(str.charAt(i))) {
                        String strV = d23Var.v();
                        if (!k55.x(d23Var.m("CWD", str))) {
                            g84.f(dj7.l("CWD failed for listing path=", str, ". Reply=", d23Var.i()));
                            return null;
                        }
                        try {
                            g23[] g23VarArrT = d23Var.t(null);
                            g23VarArrT.getClass();
                            if (strV != null && strV.length() != 0) {
                            }
                            return g23VarArrT;
                        } finally {
                            if (strV != null && strV.length() != 0 && !k55.x(d23Var.m("CWD", strV))) {
                                x(d23Var, "listFilesInternal: Discarding FTP client after failed PWD restore to ".concat(strV));
                            }
                        }
                    }
                }
                g23[] g23VarArrT2 = d23Var.t(str);
                g23VarArrT2.getClass();
                return g23VarArrT2;
            }
        }
        g23[] g23VarArrT3 = d23Var.t(null);
        g23VarArrT3.getClass();
        return g23VarArrT3;
    }

    public final void D(String str, String str2) throws Exception {
        d32 d32Var = new d32(1, this, str, str2);
        Exception exc = null;
        for (int i = 0; i < 5; i++) {
            try {
                d32Var.invoke();
                return;
            } catch (Exception e) {
                exc = e;
            }
        }
        if (exc != null) {
            throw exc;
        }
        try {
            throw new RuntimeException("Failed action with tag=move after retries=5");
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "FTPService", "move: ".concat(io4.b(e2)), null, 4, null);
            throw e2;
        }
    }

    public final void E(c62 c62Var, String str, mt3 mt3Var) throws Exception {
        F(str);
        String strG = G(str);
        w(strG);
        d23 d23VarZ = z(false);
        BufferedInputStream bufferedInputStreamA = c62Var.a();
        try {
            d23VarZ.H = new q23(mt3Var);
            String strConcat = str.concat(".tmp");
            try {
                try {
                    boolean zX = d23VarZ.x(G(strConcat), bufferedInputStreamA);
                    if (!zX) {
                        int i = d23VarZ.k;
                        String strI = d23VarZ.i();
                        strI.getClass();
                        throw new zs3(i, strI);
                    }
                    d23VarZ.H = null;
                    if (zX) {
                        D(strConcat, strG);
                    }
                    bufferedInputStreamA.close();
                } catch (Exception e) {
                    vr6.e$default(vr6.INSTANCE, "FTPService", "put: Failed uploading file to " + strG + ". Reply=" + d23VarZ.i(), null, 4, null);
                    x(d23VarZ, "put: Discarding FTP client after failed upload to ".concat(strG));
                    if (c62Var.b || (e instanceof b62)) {
                        throw e;
                    }
                    try {
                        j(strConcat);
                        throw e;
                    } catch (Exception e2) {
                        vr6.e$default(vr6.INSTANCE, "FTPService", "put: Failed deleting partial upload at " + strConcat + ": " + io4.b(e2), null, 4, null);
                        throw e;
                    }
                }
            } catch (Throwable th) {
                d23VarZ.H = null;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                rs9.c(bufferedInputStreamA, th2);
                throw th3;
            }
        }
    }

    public final String G(String str) {
        str.getClass();
        return nq7.I0(str, '/');
    }

    public final boolean H(zs3 zs3Var) {
        if (!this.e || this.h) {
            return false;
        }
        int i = zs3Var.a;
        String str = zs3Var.b;
        if (i != 426 || !nq7.Z(str, "Failure reading network stream", true)) {
            return false;
        }
        vr6.w$default(vr6.INSTANCE, "FTPService", xs1.j("put: Retrying FTPS upload with TLSv1.2 after reply=", nq7.H0(str).toString()), null, 4, null);
        this.h = true;
        b();
        return true;
    }

    @Override // defpackage.jh1
    public final synchronized void b() {
        d23 d23Var = this.d;
        this.d = null;
        this.j = null;
        if (d23Var != null) {
            try {
                d23Var.e(this.l);
            } catch (Exception unused) {
            }
        }
        if (d23Var != null) {
            try {
                d23Var.l(26);
            } catch (Exception unused2) {
            }
        }
        if (d23Var != null) {
            try {
                Socket socket = d23Var.b;
                if (socket == null ? false : socket.isConnected()) {
                    d23Var.q();
                }
            } catch (Exception unused3) {
            }
        }
    }

    @Override // defpackage.jh1
    public final synchronized tc4 c(String str, t15 t15Var) throws Exception {
        d11 d11Var;
        str.getClass();
        d11Var = new d11(9, this, str);
        Exception exc = null;
        for (int i = 0; i < 10; i++) {
            if (i > 0) {
                try {
                    Thread.sleep(1000L);
                } catch (Exception e) {
                    vr6.e$default(vr6.INSTANCE, "FTPService", "get: ".concat(io4.b(e)), null, 4, null);
                    throw e;
                }
            }
            try {
            } catch (Exception e2) {
                exc = e2;
            }
        }
        if (exc != null) {
            throw exc;
        }
        throw new RuntimeException("Failed action with tag=get after retries=10");
        return (tc4) d11Var.invoke();
    }

    @Override // defpackage.jh1
    public final CloudOperationsImpl$LoginResult d(boolean z) {
        boolean z2 = this.e && this.g != z;
        this.g = z;
        try {
            z(z2);
            return new CloudOperationsImpl$LoginResult.Success();
        } catch (Exception e) {
            Log.e("FTPService", "FTPService.login():", e);
            vr6.e$default(vr6.INSTANCE, "FTPService", "FTPService.login(): ".concat(io4.b(e)), null, 4, null);
            if (e instanceof mf8) {
                return new CloudOperationsImpl$LoginResult.UntrustedCertificate((mf8) e);
            }
            if ((e instanceof SSLHandshakeException) && this.e) {
                return new CloudOperationsImpl$LoginResult.UntrustedCertificate(new mf8(e, null));
            }
            return ((e instanceof ConnectException) || (e instanceof SocketTimeoutException) || (e instanceof SocketException) || (e instanceof UnknownHostException)) ? new CloudOperationsImpl$LoginResult.TempConnectionError(e) : new CloudOperationsImpl$LoginResult.TempConnectionError(e);
        }
    }

    @Override // defpackage.jh1
    public final void e(c62 c62Var, String str, long j, cz czVar) throws Exception {
        Exception exc = null;
        for (int i = 0; i < 10; i++) {
            try {
                E(c62Var, str, czVar);
                return;
            } catch (Exception e) {
                exc = e;
                try {
                    if (c62Var.b) {
                        throw exc;
                    }
                    if (exc instanceof b62) {
                        throw exc;
                    }
                    if (exc instanceof zs3) {
                        if (!H((zs3) exc)) {
                            throw exc;
                        }
                        E(c62Var, str, czVar);
                        return;
                    }
                    if (i < 9) {
                        vr6.e$default(vr6.INSTANCE, "FTPService", "put: retrying after upload failure (" + (i + 1) + "/10): " + io4.b(exc), null, 4, null);
                    }
                } catch (Exception e2) {
                    vr6.e$default(vr6.INSTANCE, "FTPService", "put: ".concat(io4.b(e2)), null, 4, null);
                    throw e2;
                }
            }
        }
        if (exc != null) {
            throw exc;
        }
        throw new RuntimeException("Failed action with tag=put after retries=10");
    }

    @Override // defpackage.jh1
    public final pg1 f(String str) {
        g23 g23VarA;
        str.getClass();
        try {
            g23VarA = A(str);
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "FTPService", "getFile: ".concat(io4.b(e)), null, 4, null);
            g23VarA = null;
        }
        if (g23VarA == null) {
            return null;
        }
        String strI0 = nq7.I0(str, '/');
        return og1.a(g23VarA, nq7.E0('/', strI0, strI0));
    }

    @Override // defpackage.jh1
    public final dd1 g() {
        return this.c;
    }

    @Override // defpackage.jh1
    public final synchronized void h(String str) throws Exception {
        str.getClass();
        g52 g52Var = new g52(2, this, str);
        Exception exc = null;
        for (int i = 0; i < 5; i++) {
            try {
                g52Var.invoke();
            } catch (Exception e) {
                exc = e;
            }
        }
        if (exc != null) {
            throw exc;
        }
        try {
            throw new RuntimeException("Failed action with tag=createDirectory after retries=5");
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "FTPService", "createDirectory: ".concat(io4.b(e2)), null, 4, null);
            throw e2;
        }
    }

    @Override // defpackage.jh1
    public final void j(String str) throws Exception {
        str.getClass();
        kg kgVar = new kg(7, this, str);
        Exception exc = null;
        for (int i = 0; i < 5; i++) {
            try {
                kgVar.invoke();
                return;
            } catch (Exception e) {
                exc = e;
            }
        }
        if (exc != null) {
            throw exc;
        }
        try {
            throw new RuntimeException("Failed action with tag=delete after retries=5");
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "FTPService", "delete: ".concat(io4.b(e2)), null, 4, null);
        }
    }

    @Override // defpackage.jh1
    public final ni1 l() throws Exception {
        Exception e = null;
        for (int i = 0; i < 5; i++) {
            try {
                tb1 tb1Var = tb1.a;
                return new ni1(Long.valueOf(y(qb1.c().i())), null);
            } catch (Exception e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
        try {
            throw new RuntimeException("Failed action with tag=getQuota after retries=5");
        } catch (Exception e3) {
            vr6.e$default(vr6.INSTANCE, "FTPService", "getQuota: ".concat(io4.b(e3)), null, 4, null);
            return new ni1(null, null);
        }
    }

    @Override // defpackage.jh1
    public final String n() {
        return "FTPService";
    }

    @Override // defpackage.jh1
    public final ih1 o(String str) {
        try {
            return A(str) != null ? ih1.Exists : ih1.Missing;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "FTPService", "getMetadataPathExistence: ".concat(io4.b(e)), null, 4, null);
            return ih1.Unknown;
        }
    }

    @Override // defpackage.jh1
    public final hh1 q(String str) throws Exception {
        str.getClass();
        qf qfVar = new qf(12, this, str);
        Exception exc = null;
        for (int i = 0; i < 5; i++) {
            try {
                return (hh1) qfVar.invoke();
            } catch (Exception e) {
                try {
                    exc = e;
                } catch (Exception e2) {
                    vr6.e$default(vr6.INSTANCE, "FTPService", "listMetadataDirectory: ".concat(io4.b(e2)), null, 4, null);
                    return fh1.a;
                }
            }
        }
        if (exc != null) {
            throw exc;
        }
        throw new RuntimeException("Failed action with tag=listMetadataDirectory after retries=5");
    }

    @Override // defpackage.jh1
    public final boolean r(String str) throws Exception {
        str.getClass();
        Exception e = null;
        for (int i = 0; i < 5; i++) {
            try {
                return this.f(str) != null;
            } catch (Exception e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
        try {
            throw new RuntimeException("Failed action with tag=exists after retries=5");
        } catch (Exception e3) {
            vr6.e$default(vr6.INSTANCE, "FTPService", "exists: ".concat(io4.b(e3)), null, 4, null);
            return false;
        }
    }

    @Override // defpackage.jh1
    public final List s(String str) throws Exception {
        str.getClass();
        Exception e = null;
        for (int i = 0; i < 5; i++) {
            try {
                d23 d23VarZ = z(false);
                String strG = G(str);
                ArrayList arrayListG = xh8.G(B(d23VarZ, strG));
                ArrayList arrayList = new ArrayList();
                Iterator it = arrayListG.iterator();
                while (it.hasNext()) {
                    arrayList.add(og1.a((g23) it.next(), strG));
                }
                return arrayList;
            } catch (Exception e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
        try {
            throw new RuntimeException("Failed action with tag=list after retries=5");
        } catch (Exception e3) {
            vr6.e$default(vr6.INSTANCE, "FTPService", "list: ".concat(io4.b(e3)), null, 4, null);
            return ov2.a;
        }
    }

    @Override // defpackage.mj1
    public final synchronized void u(CloudCredentials cloudCredentials) {
        try {
            cloudCredentials.getClass();
            ys3 ys3VarB = m() ? xh8.b(t()) : null;
            super.u(cloudCredentials);
            if (!pe4.d(ys3VarB, xh8.b(cloudCredentials))) {
                b();
                this.h = false;
                this.i = false;
                this.k = false;
            }
            this.e = pe4.d(cloudCredentials.getProtocol().getScheme(), "ftps");
            this.f = cloudCredentials.getProtocol() == fd1.FTPS_IMPLICIT;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized d23 v() {
        d23 ow6Var;
        try {
            ow6Var = this.e ? new ow6(this.f) : new d23();
            if ((ow6Var instanceof k23) && this.g) {
                ((k23) ow6Var).V = z85.d;
            }
            if ((ow6Var instanceof k23) && this.h) {
                ((k23) ow6Var).U = (String[]) new String[]{"TLSv1.2"}.clone();
            }
            ow6Var.a = 30000;
            ow6Var.h = 30000;
            Duration durationOfMillis = Duration.ofMillis(120000L);
            if (durationOfMillis == null) {
                durationOfMillis = Duration.ZERO;
            }
            ow6Var.v = durationOfMillis;
            ow6Var.C = 262144;
            Duration durationOfSeconds = Duration.ofSeconds(30L);
            if (durationOfSeconds == null) {
                durationOfSeconds = Duration.ZERO;
            }
            ow6Var.I = durationOfSeconds;
            Duration durationOfMillis2 = Duration.ofMillis(10000L);
            if (durationOfMillis2 == null) {
                durationOfMillis2 = Duration.ZERO;
            }
            ow6Var.J = durationOfMillis2;
            ow6Var.o = StandardCharsets.UTF_8.name();
            ow6Var.L = true;
            ow6Var.D = true;
            ow6Var.N = false;
            n23 n23Var = this.l;
            vy4 vy4Var = ow6Var.p.b;
            if (n23Var != null) {
                vy4Var.a.add(n23Var);
            } else {
                vy4Var.getClass();
            }
        } catch (Throwable th) {
            throw th;
        }
        return ow6Var;
    }

    public final void w(String str) throws Exception {
        String strI0 = nq7.I0(str, '/');
        int i = 0;
        for (int i2 = 0; i2 < strI0.length(); i2++) {
            if (strI0.charAt(i2) == '/') {
                i++;
            }
        }
        if (i > 0) {
            h(nq7.F0(str, "/", str));
        }
    }

    public final synchronized void x(d23 d23Var, String str) {
        vr6.w$default(vr6.INSTANCE, "FTPService", str, null, 4, null);
        if (this.d == d23Var) {
            this.d = null;
            this.j = null;
        }
        try {
            d23Var.e(this.l);
        } catch (Exception unused) {
        }
        try {
            Socket socket = d23Var.b;
            if (socket == null ? false : socket.isConnected()) {
                d23Var.q();
            }
        } catch (Exception unused2) {
        }
    }

    public final long y(String str) {
        cv cvVar = new cv(8, this, str);
        Exception exc = null;
        for (int i = 0; i < 5; i++) {
            try {
                return ((Number) cvVar.invoke()).longValue();
            } catch (Exception e) {
                try {
                    exc = e;
                } catch (Exception e2) {
                    vr6.e$default(vr6.INSTANCE, "FTPService", "getDirectorySize: ".concat(io4.b(e2)), null, 4, null);
                    throw e2;
                }
            }
        }
        if (exc != null) {
            throw exc;
        }
        throw new RuntimeException("Failed action with tag=getDirectorySize after retries=5");
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0025 A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, blocks: (B:5:0x0015, B:7:0x0019, B:9:0x001d, B:15:0x002e, B:17:0x0032, B:19:0x0049, B:21:0x0057, B:23:0x0065, B:25:0x006b, B:28:0x0071, B:33:0x007e, B:65:0x0186, B:70:0x01a4, B:74:0x01ad, B:77:0x01b4, B:79:0x01c3, B:82:0x01e0, B:84:0x01e4, B:68:0x018c, B:37:0x0088, B:38:0x00e4, B:40:0x0104, B:42:0x0108, B:44:0x011b, B:47:0x0125, B:48:0x012e, B:50:0x0131, B:53:0x0138, B:56:0x0149, B:57:0x0162, B:58:0x0163, B:60:0x0172, B:63:0x017a, B:87:0x01f6, B:88:0x020f, B:89:0x0210, B:90:0x0229, B:91:0x022a, B:92:0x022f, B:31:0x0078, B:93:0x0230, B:94:0x0237, B:14:0x0025), top: B:97:0x0015, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0104 A[Catch: all -> 0x0022, Exception -> 0x0122, TryCatch #2 {Exception -> 0x0122, blocks: (B:38:0x00e4, B:40:0x0104, B:42:0x0108, B:44:0x011b, B:47:0x0125, B:48:0x012e, B:50:0x0131, B:53:0x0138, B:56:0x0149, B:57:0x0162, B:58:0x0163, B:60:0x0172, B:63:0x017a, B:87:0x01f6, B:88:0x020f, B:89:0x0210, B:90:0x0229), top: B:100:0x00e4, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0108 A[Catch: all -> 0x0022, Exception -> 0x0122, TryCatch #2 {Exception -> 0x0122, blocks: (B:38:0x00e4, B:40:0x0104, B:42:0x0108, B:44:0x011b, B:47:0x0125, B:48:0x012e, B:50:0x0131, B:53:0x0138, B:56:0x0149, B:57:0x0162, B:58:0x0163, B:60:0x0172, B:63:0x017a, B:87:0x01f6, B:88:0x020f, B:89:0x0210, B:90:0x0229), top: B:100:0x00e4, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x011b A[Catch: all -> 0x0022, Exception -> 0x0122, TryCatch #2 {Exception -> 0x0122, blocks: (B:38:0x00e4, B:40:0x0104, B:42:0x0108, B:44:0x011b, B:47:0x0125, B:48:0x012e, B:50:0x0131, B:53:0x0138, B:56:0x0149, B:57:0x0162, B:58:0x0163, B:60:0x0172, B:63:0x017a, B:87:0x01f6, B:88:0x020f, B:89:0x0210, B:90:0x0229), top: B:100:0x00e4, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0125 A[Catch: all -> 0x0022, Exception -> 0x0122, TryCatch #2 {Exception -> 0x0122, blocks: (B:38:0x00e4, B:40:0x0104, B:42:0x0108, B:44:0x011b, B:47:0x0125, B:48:0x012e, B:50:0x0131, B:53:0x0138, B:56:0x0149, B:57:0x0162, B:58:0x0163, B:60:0x0172, B:63:0x017a, B:87:0x01f6, B:88:0x020f, B:89:0x0210, B:90:0x0229), top: B:100:0x00e4, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0172 A[Catch: all -> 0x0022, Exception -> 0x0122, TryCatch #2 {Exception -> 0x0122, blocks: (B:38:0x00e4, B:40:0x0104, B:42:0x0108, B:44:0x011b, B:47:0x0125, B:48:0x012e, B:50:0x0131, B:53:0x0138, B:56:0x0149, B:57:0x0162, B:58:0x0163, B:60:0x0172, B:63:0x017a, B:87:0x01f6, B:88:0x020f, B:89:0x0210, B:90:0x0229), top: B:100:0x00e4, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0176  */
    /* JADX WARN: Code duplicated, block: B:63:0x017a A[Catch: all -> 0x0022, Exception -> 0x0122, TRY_LEAVE, TryCatch #2 {Exception -> 0x0122, blocks: (B:38:0x00e4, B:40:0x0104, B:42:0x0108, B:44:0x011b, B:47:0x0125, B:48:0x012e, B:50:0x0131, B:53:0x0138, B:56:0x0149, B:57:0x0162, B:58:0x0163, B:60:0x0172, B:63:0x017a, B:87:0x01f6, B:88:0x020f, B:89:0x0210, B:90:0x0229), top: B:100:0x00e4, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x01f6 A[Catch: all -> 0x0022, Exception -> 0x0122, TRY_ENTER, TryCatch #2 {Exception -> 0x0122, blocks: (B:38:0x00e4, B:40:0x0104, B:42:0x0108, B:44:0x011b, B:47:0x0125, B:48:0x012e, B:50:0x0131, B:53:0x0138, B:56:0x0149, B:57:0x0162, B:58:0x0163, B:60:0x0172, B:63:0x017a, B:87:0x01f6, B:88:0x020f, B:89:0x0210, B:90:0x0229), top: B:100:0x00e4, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0210 A[Catch: all -> 0x0022, Exception -> 0x0122, TryCatch #2 {Exception -> 0x0122, blocks: (B:38:0x00e4, B:40:0x0104, B:42:0x0108, B:44:0x011b, B:47:0x0125, B:48:0x012e, B:50:0x0131, B:53:0x0138, B:56:0x0149, B:57:0x0162, B:58:0x0163, B:60:0x0172, B:63:0x017a, B:87:0x01f6, B:88:0x020f, B:89:0x0210, B:90:0x0229), top: B:100:0x00e4, outer: #0 }] */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01c1, code lost:
    
        if (defpackage.pe4.d(defpackage.nq7.I0(r15, r0), r11) == false) goto L79;
     */
    /* JADX WARN: Instruction removed from duplicated block: B:87:0x01f6, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:89:0x0210, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized defpackage.d23 z(boolean r37) {
        /*
            Method dump skipped, instruction units count: 570
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o23.z(boolean):d23");
    }
}
