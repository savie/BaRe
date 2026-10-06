package defpackage;

import android.database.SQLException;
import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gs1 implements cs1 {
    public final r26 a;
    public final r26 b;
    public final hx0 c;
    public final ThreadLocal d;
    public volatile boolean e;
    public final long f;
    public final int k;

    public gs1(cd cdVar, String str, int i) {
        str.getClass();
        this.c = new hx0(5);
        this.d = new ThreadLocal();
        ma2 ma2Var = mr2.b;
        this.f = pe4.G(30, or2.SECONDS);
        int i2 = 2;
        this.k = 2;
        if (i <= 0) {
            c6.f("Maximum number of readers must be greater than 0");
            throw null;
        }
        this.a = new r26(i, new d11(i2, cdVar, str));
        this.b = new r26(1, new qf(6, cdVar, str));
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.e) {
            return;
        }
        this.e = true;
        this.a.c();
        this.b.c();
    }

    /* JADX WARN: Code duplicated, block: B:68:0x013b  */
    /* JADX WARN: Code duplicated, block: B:71:0x0147 A[Catch: all -> 0x01a0, TRY_LEAVE, TryCatch #0 {all -> 0x01a0, blocks: (B:64:0x011f, B:69:0x013c, B:71:0x0147, B:86:0x01a4, B:87:0x01ab), top: B:107:0x011f }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0178  */
    /* JADX WARN: Code duplicated, block: B:77:0x0180  */
    /* JADX WARN: Code duplicated, block: B:79:0x0184  */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Code duplicated, block: B:81:0x0191  */
    /* JADX WARN: Code duplicated, block: B:86:0x01a4 A[Catch: all -> 0x01a0, TRY_ENTER, TryCatch #0 {all -> 0x01a0, blocks: (B:64:0x011f, B:69:0x013c, B:71:0x0147, B:86:0x01a4, B:87:0x01ab), top: B:107:0x011f }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1, types: [ds1] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [r26] */
    /* JADX WARN: Type inference failed for: r2v8, types: [r26] */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object, r26] */
    @Override // defpackage.cs1
    public final Object w(boolean z, qt3 qt3Var, kv1 kv1Var) throws Throwable {
        es1 es1Var;
        lh6 lh6Var;
        Throwable th;
        ?? r2;
        ox1 context;
        qt3 qt3Var2;
        hx0 hx0Var;
        ?? r13;
        lh6 lh6Var2;
        ?? r14;
        int i;
        boolean z2;
        Object obj;
        lh6 lh6Var3;
        ?? r3;
        b36 b36Var;
        final boolean z3 = z;
        if (kv1Var instanceof es1) {
            es1Var = (es1) kv1Var;
            int i2 = es1Var.q;
            if ((i2 & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                es1Var.q = i2 - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                es1Var = new es1(this, kv1Var);
            }
        } else {
            es1Var = new es1(this, kv1Var);
        }
        Object objG = es1Var.n;
        yx1 yx1Var = yx1.a;
        int i3 = es1Var.q;
        jv1 jv1Var = null;
        if (i3 != 0) {
            if (i3 == 1) {
                lg7.H(objG);
                return objG;
            }
            if (i3 == 2) {
                lg7.H(objG);
                return objG;
            }
            if (i3 == 3) {
                z3 = es1Var.a;
                hx0Var = es1Var.k;
                lh6 lh6Var4 = es1Var.f;
                ox1 ox1Var = es1Var.e;
                lh6 lh6Var5 = es1Var.d;
                r26 r26Var = (r26) es1Var.c;
                qt3Var2 = (qt3) es1Var.b;
                try {
                    lg7.H(objG);
                    lh6Var2 = lh6Var4;
                    lh6Var = lh6Var5;
                    context = ox1Var;
                    r13 = r26Var;
                    try {
                        ns1 ns1Var = (ns1) objG;
                        ns1Var.getClass();
                        context.getClass();
                        ns1Var.c = context;
                        ns1Var.d = new Throwable();
                        i = 0;
                        if (this.a == this.b && z3) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        lh6Var2.a = new b36(hx0Var, ns1Var, z2);
                        obj = lh6Var.a;
                        if (obj != null) {
                            throw new IllegalArgumentException("Required value was null.");
                        }
                        b36 b36Var2 = (b36) obj;
                        zr1 zr1Var = new zr1(this.c, b36Var2);
                        ThreadLocal threadLocal = this.d;
                        threadLocal.getClass();
                        ox1 ox1VarS = iz1.s(zr1Var, new q28(b36Var2, threadLocal));
                        fs1 fs1Var = new fs1(qt3Var2, lh6Var, jv1Var, i);
                        es1Var.b = r13;
                        es1Var.c = lh6Var;
                        es1Var.d = null;
                        es1Var.e = null;
                        es1Var.f = null;
                        es1Var.k = null;
                        es1Var.q = 4;
                        objG = l73.G(ox1VarS, fs1Var, es1Var);
                        if (objG != yx1Var) {
                            lh6Var3 = lh6Var;
                            r3 = r13;
                        }
                        return yx1Var;
                    } catch (Throwable th2) {
                        th = th2;
                        r14 = r13;
                        r2 = r14;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    lh6Var = lh6Var5;
                    r14 = r26Var;
                    r2 = r14;
                    throw th;
                }
            }
            if (i3 != 4) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lh6Var3 = (lh6) es1Var.c;
            r26 r26Var2 = (r26) es1Var.b;
            try {
                lg7.H(objG);
                r3 = r26Var2;
            } catch (Throwable th4) {
                lh6Var = lh6Var3;
                th = th4;
                r2 = r26Var2;
            }
            b36Var = (b36) lh6Var3.a;
            if (b36Var != null) {
                if (!b36Var.e) {
                    b36Var.e = true;
                    if (b36Var.b.a.a0()) {
                        ly8.t("ROLLBACK TRANSACTION", b36Var.b);
                    }
                }
                ns1 ns1Var2 = b36Var.b;
                ns1Var2.c = null;
                ns1Var2.d = null;
                r3.e(ns1Var2);
            }
            return objG;
        }
        lg7.H(objG);
        if (this.e) {
            ly8.P(21, "Connection pool is closed");
            throw null;
        }
        b36 b36Var3 = (b36) this.d.get();
        if (b36Var3 == null) {
            zr1 zr1Var2 = (zr1) es1Var.getContext().get(this.c);
            b36Var3 = zr1Var2 != null ? zr1Var2.b : null;
        }
        if (b36Var3 == null) {
            ?? r4 = z3 ? this.a : this.b;
            lh6Var = new lh6();
            try {
                context = es1Var.getContext();
                hx0 hx0Var2 = this.c;
                long j = this.f;
                ?? r11 = new bt3() { // from class: ds1
                    @Override // defpackage.bt3
                    public final Object invoke() {
                        String str = z3 ? "reader" : "writer";
                        StringBuilder sb = new StringBuilder();
                        sb.append("Timed out attempting to acquire a " + str + " connection.");
                        sb.append("\n\nWriter pool:\n");
                        gs1 gs1Var = this.a;
                        gs1Var.b.d(sb);
                        sb.append("Reader pool:");
                        sb.append('\n');
                        gs1Var.a.d(sb);
                        try {
                            ly8.P(5, sb.toString());
                            throw null;
                        } catch (SQLException e) {
                            int i4 = gs1Var.k;
                            if (i4 == 1) {
                                throw e;
                            }
                            if (i4 == 2) {
                                e.printStackTrace();
                            }
                            return be8.a;
                        }
                    }
                };
                es1Var.b = qt3Var;
                es1Var.c = r4;
                es1Var.d = lh6Var;
                es1Var.e = context;
                es1Var.f = lh6Var;
                es1Var.k = hx0Var2;
                es1Var.a = z3;
                es1Var.q = 3;
                Object objB = r4.b(j, r11, es1Var);
                if (objB != yx1Var) {
                    qt3Var2 = qt3Var;
                    hx0Var = hx0Var2;
                    r13 = r4;
                    objG = objB;
                    lh6Var2 = lh6Var;
                    ns1 ns1Var3 = (ns1) objG;
                    ns1Var3.getClass();
                    context.getClass();
                    ns1Var3.c = context;
                    ns1Var3.d = new Throwable();
                    i = 0;
                    if (this.a == this.b) {
                        z2 = false;
                    } else {
                        z2 = false;
                    }
                    lh6Var2.a = new b36(hx0Var, ns1Var3, z2);
                    obj = lh6Var.a;
                    if (obj != null) {
                        throw new IllegalArgumentException("Required value was null.");
                    }
                    b36 b36Var4 = (b36) obj;
                    zr1 zr1Var3 = new zr1(this.c, b36Var4);
                    ThreadLocal threadLocal2 = this.d;
                    threadLocal2.getClass();
                    ox1 ox1VarS2 = iz1.s(zr1Var3, new q28(b36Var4, threadLocal2));
                    fs1 fs1Var2 = new fs1(qt3Var2, lh6Var, jv1Var, i);
                    es1Var.b = r13;
                    es1Var.c = lh6Var;
                    es1Var.d = null;
                    es1Var.e = null;
                    es1Var.f = null;
                    es1Var.k = null;
                    es1Var.q = 4;
                    objG = l73.G(ox1VarS2, fs1Var2, es1Var);
                    if (objG != yx1Var) {
                        lh6Var3 = lh6Var;
                        r3 = r13;
                        b36Var = (b36) lh6Var3.a;
                        if (b36Var != null) {
                            if (!b36Var.e) {
                                b36Var.e = true;
                                if (b36Var.b.a.a0()) {
                                    ly8.t("ROLLBACK TRANSACTION", b36Var.b);
                                }
                            }
                            ns1 ns1Var4 = b36Var.b;
                            ns1Var4.c = null;
                            ns1Var4.d = null;
                            r3.e(ns1Var4);
                        }
                        return objG;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                r2 = r4;
            }
        } else {
            if (!z3 && b36Var3.c) {
                ly8.P(1, "Cannot upgrade connection from reader to writer");
                throw null;
            }
            if (es1Var.getContext().get(this.c) == null) {
                zr1 zr1Var4 = new zr1(this.c, b36Var3);
                ThreadLocal threadLocal3 = this.d;
                threadLocal3.getClass();
                ox1 ox1VarS3 = iz1.s(zr1Var4, new q28(b36Var3, threadLocal3));
                o41 o41Var = new o41(qt3Var, b36Var3, (jv1) null);
                es1Var.q = 1;
                Object objG2 = l73.G(ox1VarS3, o41Var, es1Var);
                if (objG2 != yx1Var) {
                    return objG2;
                }
            } else {
                es1Var.q = 2;
                Object objInvoke = qt3Var.invoke(b36Var3, es1Var);
                if (objInvoke != yx1Var) {
                    return objInvoke;
                }
            }
        }
        return yx1Var;
        try {
            throw th;
        } catch (Throwable th6) {
            try {
                b36 b36Var5 = (b36) lh6Var.a;
                if (b36Var5 == null) {
                    throw th6;
                }
                if (!b36Var5.e) {
                    b36Var5.e = true;
                    if (b36Var5.b.a.a0()) {
                        ly8.t("ROLLBACK TRANSACTION", b36Var5.b);
                    }
                }
                ns1 ns1Var5 = b36Var5.b;
                ns1Var5.c = null;
                ns1Var5.d = null;
                r2.e(ns1Var5);
                throw th6;
            } catch (Throwable th7) {
                yc9.a(th, th7);
                throw th6;
            }
        }
    }

    public gs1(cd cdVar) {
        this.c = new hx0(5);
        this.d = new ThreadLocal();
        ma2 ma2Var = mr2.b;
        this.f = pe4.G(30, or2.SECONDS);
        this.k = 2;
        r26 r26Var = new r26(1, new bh(cdVar, 16));
        this.a = r26Var;
        this.b = r26Var;
    }
}
