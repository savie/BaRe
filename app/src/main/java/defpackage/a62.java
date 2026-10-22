package defpackage;

import android.util.Log;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Timer;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class a62 extends no2 {
    public final jh1 n;
    public final fo2 p;
    public final String q;
    public OutputStream r;
    public oi5 t;
    public final int x;
    public int y;

    /* JADX WARN: Illegal instructions before constructor call */
    public a62(jh1 jh1Var, fo2 fo2Var) {
        jh1Var.getClass();
        fo2Var.getClass();
        String str = fo2Var.a;
        super(fo2Var.c, fo2Var.d, str);
        this.n = jh1Var;
        this.p = fo2Var;
        this.q = "CsDownloadSession";
        this.x = 5;
    }

    @Override // defpackage.no2
    public final void a() {
        tb1 tb1Var = tb1.a;
        String displayNameEn = qb1.f().getDisplayNameEn();
        vr6.w$default(vr6.INSTANCE, this.q, eq3.l("Closing connection with ", displayNameEn, " for ", this.p.a(), ", may result in unknown errors"), null, 4, null);
        close();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        f13.a(this.t);
        f13.a(this.r);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0184 A[Catch: all -> 0x00b5, TryCatch #11 {all -> 0x00b5, blocks: (B:24:0x0051, B:48:0x0093, B:52:0x00aa, B:54:0x00b2, B:66:0x00c6, B:68:0x00ce, B:69:0x00f7, B:87:0x0114, B:92:0x0120, B:94:0x012d, B:96:0x0158, B:98:0x015e, B:100:0x0184, B:102:0x018c, B:104:0x0192, B:106:0x0198, B:108:0x019e, B:111:0x01a5, B:113:0x01d1, B:114:0x01d7, B:116:0x01e0, B:117:0x01e3, B:83:0x010e, B:84:0x0111), top: B:140:0x0051, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x018c A[Catch: all -> 0x00b5, TryCatch #11 {all -> 0x00b5, blocks: (B:24:0x0051, B:48:0x0093, B:52:0x00aa, B:54:0x00b2, B:66:0x00c6, B:68:0x00ce, B:69:0x00f7, B:87:0x0114, B:92:0x0120, B:94:0x012d, B:96:0x0158, B:98:0x015e, B:100:0x0184, B:102:0x018c, B:104:0x0192, B:106:0x0198, B:108:0x019e, B:111:0x01a5, B:113:0x01d1, B:114:0x01d7, B:116:0x01e0, B:117:0x01e3, B:83:0x010e, B:84:0x0111), top: B:140:0x0051, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x01cf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:113:0x01d1 A[Catch: all -> 0x00b5, TryCatch #11 {all -> 0x00b5, blocks: (B:24:0x0051, B:48:0x0093, B:52:0x00aa, B:54:0x00b2, B:66:0x00c6, B:68:0x00ce, B:69:0x00f7, B:87:0x0114, B:92:0x0120, B:94:0x012d, B:96:0x0158, B:98:0x015e, B:100:0x0184, B:102:0x018c, B:104:0x0192, B:106:0x0198, B:108:0x019e, B:111:0x01a5, B:113:0x01d1, B:114:0x01d7, B:116:0x01e0, B:117:0x01e3, B:83:0x010e, B:84:0x0111), top: B:140:0x0051, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0120 A[Catch: all -> 0x00b5, TRY_ENTER, TryCatch #11 {all -> 0x00b5, blocks: (B:24:0x0051, B:48:0x0093, B:52:0x00aa, B:54:0x00b2, B:66:0x00c6, B:68:0x00ce, B:69:0x00f7, B:87:0x0114, B:92:0x0120, B:94:0x012d, B:96:0x0158, B:98:0x015e, B:100:0x0184, B:102:0x018c, B:104:0x0192, B:106:0x0198, B:108:0x019e, B:111:0x01a5, B:113:0x01d1, B:114:0x01d7, B:116:0x01e0, B:117:0x01e3, B:83:0x010e, B:84:0x0111), top: B:140:0x0051, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x012d A[Catch: all -> 0x00b5, TryCatch #11 {all -> 0x00b5, blocks: (B:24:0x0051, B:48:0x0093, B:52:0x00aa, B:54:0x00b2, B:66:0x00c6, B:68:0x00ce, B:69:0x00f7, B:87:0x0114, B:92:0x0120, B:94:0x012d, B:96:0x0158, B:98:0x015e, B:100:0x0184, B:102:0x018c, B:104:0x0192, B:106:0x0198, B:108:0x019e, B:111:0x01a5, B:113:0x01d1, B:114:0x01d7, B:116:0x01e0, B:117:0x01e3, B:83:0x010e, B:84:0x0111), top: B:140:0x0051, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x0156  */
    /* JADX WARN: Code duplicated, block: B:96:0x0158 A[Catch: all -> 0x00b5, TryCatch #11 {all -> 0x00b5, blocks: (B:24:0x0051, B:48:0x0093, B:52:0x00aa, B:54:0x00b2, B:66:0x00c6, B:68:0x00ce, B:69:0x00f7, B:87:0x0114, B:92:0x0120, B:94:0x012d, B:96:0x0158, B:98:0x015e, B:100:0x0184, B:102:0x018c, B:104:0x0192, B:106:0x0198, B:108:0x019e, B:111:0x01a5, B:113:0x01d1, B:114:0x01d7, B:116:0x01e0, B:117:0x01e3, B:83:0x010e, B:84:0x0111), top: B:140:0x0051, outer: #4 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:94:0x012d, please report this as an issue */
    @Override // defpackage.no2
    public final void g() {
        zz4 zz4VarD;
        int i;
        int i2;
        long j;
        zz4 zz4VarB = uz4.b(this.n);
        if (zz4VarB != null) {
            this.e.b = zz4VarB;
            return;
        }
        int i3 = y52.a[this.n.g().ordinal()];
        if (i3 != 1) {
            if (i3 != 2) {
                j();
                return;
            } else {
                synchronized (a62.class) {
                    j();
                }
                return;
            }
        }
        synchronized (a62.class) {
            Timer timer = new Timer();
            timer.schedule(new z52(this), 0L, 2000L);
            boolean z = false;
            try {
                try {
                    String str = this.a;
                    tc4 tc4VarC = this.n.c(str, null);
                    OutputStream outputStreamF = this.b.F(false);
                    this.r = outputStreamF;
                    try {
                        if (!this.d.isCancelled()) {
                            InputStream inputStream = tc4VarC.a;
                            inputStream.getClass();
                            try {
                                try {
                                    cy0.j(inputStream, outputStreamF, 262144);
                                    outputStreamF.close();
                                    inputStream.close();
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        rs9.c(inputStream, th);
                                        throw th2;
                                    }
                                }
                            } catch (Throwable th3) {
                                try {
                                    throw th3;
                                } catch (Throwable th4) {
                                    rs9.c(outputStreamF, th3);
                                    throw th4;
                                }
                            }
                        }
                        rs9.c(tc4VarC, null);
                        long jA = this.b.A();
                        long j2 = this.p.c;
                        if (j2 > 0 && jA != j2) {
                            pg1 pg1VarF = this.n.f(str);
                            if (pg1VarF != null) {
                                try {
                                    j = pg1VarF.c;
                                } catch (Exception e) {
                                    e = e;
                                    if (!this.d.isCancelled()) {
                                        Log.e(this.q, "executeDownload:", e);
                                        zz4VarD = uz4.d(this.n, e);
                                        if (zz4VarD != null) {
                                            vr6.e$default(vr6.INSTANCE, this.q, "Error while downloading: File id = " + this.a + ", Error = " + zz4VarD.getMessage(), null, 4, null);
                                            this.e.b = zz4VarD;
                                        } else {
                                            if (z) {
                                                vr6.e$default(vr6.INSTANCE, this.q, "Partial download retries failed (" + i + "/" + i2 + ")", null, 4, null);
                                                z = false;
                                            }
                                            if (z) {
                                                if (z) {
                                                    this.y++;
                                                }
                                                Log.d(this.q, "executeDownload: Retrying download");
                                                Thread.sleep(1000L);
                                                j();
                                            } else {
                                                ai6 ai6Var = nf1.a;
                                                if (x13.J(e)) {
                                                    if (z) {
                                                        this.y++;
                                                    }
                                                    Log.d(this.q, "executeDownload: Retrying download");
                                                    Thread.sleep(1000L);
                                                    j();
                                                } else {
                                                    if (z) {
                                                        this.y++;
                                                    }
                                                    Log.d(this.q, "executeDownload: Retrying download");
                                                    try {
                                                        Thread.sleep(1000L);
                                                    } catch (Exception unused) {
                                                    }
                                                    j();
                                                }
                                            }
                                        }
                                    }
                                    timer.cancel();
                                }
                            } else {
                                j = 0;
                            }
                            if (j > 0 && j != jA) {
                                try {
                                    fo2 fo2Var = this.p;
                                    try {
                                        throw new RuntimeException("File size mismatch for " + fo2Var.a + ": Metadata=" + fo2Var.c + ", Server=" + j + ", Downloaded=" + jA);
                                    } catch (Exception e2) {
                                        e = e2;
                                        z = true;
                                        if (!this.d.isCancelled()) {
                                            Log.e(this.q, "executeDownload:", e);
                                            zz4VarD = uz4.d(this.n, e);
                                            if (zz4VarD != null) {
                                                vr6.e$default(vr6.INSTANCE, this.q, "Error while downloading: File id = " + this.a + ", Error = " + zz4VarD.getMessage(), null, 4, null);
                                                this.e.b = zz4VarD;
                                            } else {
                                                if (z && (i = this.y) >= (i2 = this.x)) {
                                                    vr6.e$default(vr6.INSTANCE, this.q, "Partial download retries failed (" + i + "/" + i2 + ")", null, 4, null);
                                                    z = false;
                                                }
                                                if (z) {
                                                    ai6 ai6Var2 = nf1.a;
                                                    if (x13.J(e) || x13.G(e) || x13.I(e) || x13.C(e) || x13.D(e)) {
                                                        if (z) {
                                                            this.y++;
                                                        }
                                                        Log.d(this.q, "executeDownload: Retrying download");
                                                        Thread.sleep(1000L);
                                                        j();
                                                    } else {
                                                        vr6.e$default(vr6.INSTANCE, this.q, "Error while downloading: File id = " + this.a + ", Error = " + io4.b(e), null, 4, null);
                                                        this.e.b = e;
                                                    }
                                                } else {
                                                    if (z) {
                                                        this.y++;
                                                    }
                                                    Log.d(this.q, "executeDownload: Retrying download");
                                                    Thread.sleep(1000L);
                                                    j();
                                                }
                                            }
                                        }
                                        timer.cancel();
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                }
                            }
                        }
                        timer.cancel();
                    } catch (Throwable th5) {
                        try {
                            throw th5;
                        } catch (Throwable th6) {
                            try {
                                rs9.c(tc4VarC, th5);
                                throw th6;
                            } catch (Exception e4) {
                                e = e4;
                                z = false;
                                if (!this.d.isCancelled()) {
                                    Log.e(this.q, "executeDownload:", e);
                                    zz4VarD = uz4.d(this.n, e);
                                    if (zz4VarD != null) {
                                        vr6.e$default(vr6.INSTANCE, this.q, "Error while downloading: File id = " + this.a + ", Error = " + zz4VarD.getMessage(), null, 4, null);
                                        this.e.b = zz4VarD;
                                    } else {
                                        if (z) {
                                            vr6.e$default(vr6.INSTANCE, this.q, "Partial download retries failed (" + i + "/" + i2 + ")", null, 4, null);
                                            z = false;
                                        }
                                        if (z) {
                                            ai6 ai6Var3 = nf1.a;
                                            if (x13.J(e)) {
                                                if (z) {
                                                    this.y++;
                                                }
                                                Log.d(this.q, "executeDownload: Retrying download");
                                                Thread.sleep(1000L);
                                                j();
                                            } else {
                                                if (z) {
                                                    this.y++;
                                                }
                                                Log.d(this.q, "executeDownload: Retrying download");
                                                Thread.sleep(1000L);
                                                j();
                                            }
                                        } else {
                                            if (z) {
                                                this.y++;
                                            }
                                            Log.d(this.q, "executeDownload: Retrying download");
                                            Thread.sleep(1000L);
                                            j();
                                        }
                                    }
                                }
                                timer.cancel();
                            }
                        }
                    }
                } catch (Exception e5) {
                    e = e5;
                }
            } catch (Throwable th7) {
                timer.cancel();
                throw th7;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:106:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x015c  */
    /* JADX WARN: Code duplicated, block: B:51:0x016b  */
    /* JADX WARN: Code duplicated, block: B:53:0x0183  */
    /* JADX WARN: Code duplicated, block: B:58:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:68:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:75:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:78:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:81:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:90:0x0217  */
    public final void j() {
        boolean z;
        zz4 zz4VarD;
        ke keVar;
        String message;
        String message2;
        String message3;
        int i;
        int i2;
        dz dzVar;
        boolean z2;
        jh1 jh1Var = this.n;
        final String str = this.a;
        fo2 fo2Var = this.p;
        String str2 = this.q;
        String strJ = eq3.j(str2, ": executeDownload:");
        try {
            dz dzVar2 = new dz(1, this, new kh6(), new kh6());
            if (fo2Var.c <= 0) {
                try {
                    z2 = false;
                    dzVar = dzVar2;
                    try {
                        vr6.i$default(vr6.INSTANCE, strJ, "Getting file size from server for " + str, null, 4, null);
                        pg1 pg1VarF = jh1Var.f(str);
                        if (pg1VarF == null) {
                            throw new IllegalStateException("File info not available for remote file at ".concat(str).toString());
                        }
                        long j = pg1VarF.c;
                        fo2Var.c = j;
                        p93 p93Var = p93.a;
                        Log.d(strJ, "File size for " + str + " = " + p93.c(Long.valueOf(j)));
                    } catch (Exception e) {
                        e = e;
                        str = str;
                        z = z2;
                    }
                } catch (Exception e2) {
                    e = e2;
                    z2 = false;
                }
            } else {
                dzVar = dzVar2;
            }
            try {
                oi5 oi5Var = new oi5(new st3() { // from class: x52
                    @Override // defpackage.st3
                    public final Object d(Object obj, Object obj2, Object obj3, Object obj4) {
                        long jLongValue = ((Long) obj).longValue();
                        long jLongValue2 = ((Long) obj2).longValue();
                        ((Long) obj3).getClass();
                        OutputStream outputStream = (OutputStream) obj4;
                        outputStream.getClass();
                        a62 a62Var = this.a;
                        tc4 tc4VarC = a62Var.n.c(str, new t15(jLongValue, jLongValue2));
                        try {
                            if (!a62Var.d.isCancelled()) {
                                InputStream inputStream = tc4VarC.a;
                                inputStream.getClass();
                                try {
                                    try {
                                        cy0.j(inputStream, outputStream, 262144);
                                        outputStream.close();
                                        inputStream.close();
                                    } catch (Throwable th) {
                                        try {
                                            throw th;
                                        } catch (Throwable th2) {
                                            rs9.c(outputStream, th);
                                            throw th2;
                                        }
                                    }
                                } catch (Throwable th3) {
                                    try {
                                        throw th3;
                                    } catch (Throwable th4) {
                                        rs9.c(inputStream, th3);
                                        throw th4;
                                    }
                                }
                            }
                            rs9.c(tc4VarC, null);
                            return be8.a;
                        } catch (Throwable th5) {
                            try {
                                throw th5;
                            } catch (Throwable th6) {
                                rs9.c(tc4VarC, th5);
                                throw th6;
                            }
                        }
                    }
                }, this.b, fo2Var.c, jh1Var.a(), fo2Var.a(), jh1Var.g().getConstant() + ":" + str + ":" + fo2Var.c, fo2Var.e, fo2Var.f);
                this.t = oi5Var;
                oi5Var.b(dzVar);
                long jA = this.b.A();
                long j2 = fo2Var.c;
                if (j2 <= 0 || jA == j2) {
                    return;
                }
                pg1 pg1VarF2 = jh1Var.f(str);
                long j3 = pg1VarF2 != null ? pg1VarF2.c : 0L;
                if (j3 <= 0 || j3 == jA) {
                    return;
                }
                try {
                    try {
                        throw new RuntimeException("File size mismatch for " + fo2Var.a + ": Metadata=" + fo2Var.c + ", Server=" + j3 + ", Downloaded=" + jA);
                    } catch (Exception e3) {
                        e = e3;
                        z = true;
                        if (this.d.isCancelled()) {
                            return;
                        }
                        Log.e(str2, strJ, e);
                        zz4VarD = uz4.d(jh1Var, e);
                        keVar = this.e;
                        if (zz4VarD != null) {
                            vr6.e$default(vr6.INSTANCE, this.q, dj7.l("Error while downloading: File id = ", str, ", Error = ", zz4VarD.getMessage()), null, 4, null);
                            keVar.b = zz4VarD;
                            return;
                        }
                        if (z) {
                            vr6.e$default(vr6.INSTANCE, this.q, dj7.j("Partial download retries failed (", i, "/", ")", i2), null, 4, null);
                            z = false;
                        }
                        if (!z) {
                            ai6 ai6Var = nf1.a;
                            if (!x13.J(e)) {
                                message = e.getMessage();
                                if (message == null) {
                                    message = "";
                                }
                                if (!nq7.Z(message, "inputstream is closed", false)) {
                                    message2 = e.getMessage();
                                    if (message2 == null) {
                                        message2 = "";
                                    }
                                    if (!nq7.Z(message2, "NoRouteToHostException", false)) {
                                        message3 = e.getMessage();
                                        if (!nq7.Z(message3 != null ? message3 : "", "ENETUNREACH", false)) {
                                            vr6.e$default(vr6.INSTANCE, this.q, dj7.l("Error while downloading: File id = ", str, ", Error = ", io4.b(e)), null, 4, null);
                                            keVar.b = e;
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                        if (z) {
                            this.y++;
                        }
                        Log.d(str2, strJ.concat(" Retrying download"));
                        Const.R();
                        j();
                    }
                } catch (Exception e4) {
                    e = e4;
                }
            } catch (Exception e5) {
                e = e5;
                z = false;
            }
        } catch (Exception e6) {
            e = e6;
        }
        if (this.d.isCancelled()) {
            return;
        }
        Log.e(str2, strJ, e);
        zz4VarD = uz4.d(jh1Var, e);
        keVar = this.e;
        if (zz4VarD != null) {
            vr6.e$default(vr6.INSTANCE, this.q, dj7.l("Error while downloading: File id = ", str, ", Error = ", zz4VarD.getMessage()), null, 4, null);
            keVar.b = zz4VarD;
            return;
        }
        if (z && (i = this.y) >= (i2 = this.x)) {
            vr6.e$default(vr6.INSTANCE, this.q, dj7.j("Partial download retries failed (", i, "/", ")", i2), null, 4, null);
            z = false;
        }
        if (!z) {
            ai6 ai6Var2 = nf1.a;
            if (!x13.J(e) && !x13.G(e) && !x13.I(e) && !x13.C(e)) {
                message = e.getMessage();
                if (message == null) {
                    message = "";
                }
                if (!nq7.Z(message, "inputstream is closed", false) && !x13.K(e)) {
                    message2 = e.getMessage();
                    if (message2 == null) {
                        message2 = "";
                    }
                    if (!nq7.Z(message2, "NoRouteToHostException", false)) {
                        message3 = e.getMessage();
                        if (!nq7.Z(message3 != null ? message3 : "", "ENETUNREACH", false) && !x13.D(e)) {
                            vr6.e$default(vr6.INSTANCE, this.q, dj7.l("Error while downloading: File id = ", str, ", Error = ", io4.b(e)), null, 4, null);
                            keVar.b = e;
                            return;
                        }
                    }
                }
            }
        }
        if (z) {
            this.y++;
        }
        Log.d(str2, strJ.concat(" Retrying download"));
        Const.R();
        j();
    }
}
