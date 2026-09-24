package defpackage;

import android.content.SharedPreferences;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class n92 extends ag8 {
    public final br2 i;
    public final long j;
    public final String k;
    public final long l;
    public final boolean m;
    public final int n;
    public InputStream o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n92(br2 br2Var, rf8 rf8Var) {
        super(rf8Var);
        br2Var.getClass();
        rf8Var.getClass();
        this.i = br2Var;
        this.j = 2000L;
        this.k = "DUploadSession";
        int i = 25;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            i = sharedPreferences.getInt("dropbox_chunk_size", 25);
            long jI = l73.i(((long) l73.h(i, 1, 150)) * 1048576, 1048576L, 157286400L);
            this.l = jI;
            this.m = rf8Var.a() > jI;
            this.n = 5;
        } catch (ClassCastException unused) {
        }
    }

    @Override // defpackage.ag8
    public final void b() {
        tb1 tb1Var = tb1.a;
        String displayNameEn = qb1.f().getDisplayNameEn();
        vr6.w$default(vr6.INSTANCE, this.k, eq3.k("Closing connection with ", displayNameEn, ", may result in unknown errors"), null, 4, null);
        InputStream inputStream = this.o;
        if (inputStream != null) {
            f13.a(inputStream);
        }
    }

    @Override // defpackage.ag8
    public final String d() {
        return this.k;
    }

    @Override // defpackage.ag8
    public final void f() {
        StringBuilder sb = new StringBuilder("/");
        tb1 tb1Var = tb1.a;
        sb.append(qb1.c().i());
        rf8 rf8Var = this.a;
        if (rf8Var.c) {
            sb.append("/");
            sb.append(qb1.e());
        }
        sb.append("/");
        sb.append(rf8Var.b());
        j(sb.toString(), new mm(2, this, new kh6()));
    }

    public final void i() {
        f13.a(this.o);
        this.o = null;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x0094  */
    public final void j(String str, mm mmVar) {
        boolean z;
        boolean zD;
        try {
            try {
                this.d.a = l(str, mmVar).f;
                i();
            } catch (Exception e) {
                vr6 vr6Var = vr6.INSTANCE;
                vr6.e$default(vr6Var, this.k, "executeUpload:", e, null, 8, null);
                if (e()) {
                    i();
                    return;
                }
                int i = this.f;
                int i2 = this.e;
                boolean z2 = i < i2;
                if ((e instanceof gr2) || (e instanceof EOFException)) {
                    z = true;
                } else {
                    ai6 ai6Var = nf1.a;
                    if (x13.H(e) || x13.J(e) || x13.K(e) || x13.I(e)) {
                        z = true;
                    } else {
                        kq2 kq2Var = e instanceof kq2 ? (kq2) e : null;
                        if (kq2Var == null) {
                            zD = false;
                        } else if (kq2Var.b()) {
                            mt3 mt3Var = this.i.b;
                            String str2 = mt3Var != null ? (String) mt3Var.invoke(null) : null;
                            zD = !(str2 == null || nq7.j0(str2));
                        } else {
                            zD = kq2Var.d();
                        }
                        if (zD) {
                            z = true;
                        } else {
                            z = false;
                        }
                    }
                }
                if (!z2 || !z) {
                    a(e, false);
                    i();
                    return;
                }
                kq2 kq2Var2 = e instanceof kq2 ? (kq2) e : null;
                if (kq2Var2 == null) {
                    Throwable cause = e.getCause();
                    kq2Var2 = cause instanceof kq2 ? (kq2) cause : null;
                }
                if (!h(kq2Var2 != null ? kq2Var2.c : null)) {
                    i();
                    return;
                }
                int i3 = this.f + 1;
                this.f = i3;
                vr6.i$default(vr6Var, this.k, "executeUpload: Retrying upload (" + i3 + "/" + i2 + ")", null, 4, null);
                j(str, mmVar);
                i();
            }
        } catch (Throwable th) {
            i();
            throw th;
        }
    }

    public final Exception k(Exception exc) {
        qj4 qj4VarX;
        if (exc instanceof kq2) {
            kq2 kq2Var = (kq2) exc;
            fl4 fl4Var = (fl4) kq2Var.d.getValue();
            Long lJ = (fl4Var == null || (qj4VarX = fl4Var.x("error")) == null) ? null : y13.j(qj4VarX);
            if (lJ != null) {
                return new fr2(lJ.longValue(), exc);
            }
            if (kq2Var.b()) {
                mt3 mt3Var = this.i.b;
                String str = mt3Var != null ? (String) mt3Var.invoke(null) : null;
                if (str == null || nq7.j0(str)) {
                    return exc;
                }
                String message = exc.getMessage();
                return new gr2(message != null ? message : "", exc);
            }
            if (kq2Var.d()) {
                String message2 = exc.getMessage();
                return new gr2(message2 != null ? message2 : "", exc);
            }
        }
        ai6 ai6Var = nf1.a;
        if (!x13.H(exc) && !x13.J(exc) && !x13.K(exc) && !x13.I(exc) && !(exc instanceof EOFException)) {
            return exc;
        }
        String message3 = exc.getMessage();
        return new gr2(message3 != null ? message3 : "", exc);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20, types: [java.lang.Object, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v25, types: [gr2] */
    /* JADX WARN: Type inference failed for: r0v26, types: [fr2] */
    /* JADX WARN: Type inference failed for: r0v28, types: [fr2] */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v35, types: [lq2] */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v39, types: [gr2] */
    /* JADX WARN: Type inference failed for: r0v40, types: [fr2] */
    /* JADX WARN: Type inference failed for: r0v42 */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v49, types: [gr2] */
    /* JADX WARN: Type inference failed for: r0v50, types: [fr2] */
    /* JADX WARN: Type inference failed for: r0v51, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v52 */
    /* JADX WARN: Type inference failed for: r0v54, types: [fr2] */
    /* JADX WARN: Type inference failed for: r0v55 */
    /* JADX WARN: Type inference failed for: r0v57, types: [lq2] */
    /* JADX WARN: Type inference failed for: r0v59, types: [fr2] */
    /* JADX WARN: Type inference failed for: r0v62, types: [gr2] */
    /* JADX WARN: Type inference failed for: r0v63, types: [fr2] */
    /* JADX WARN: Type inference failed for: r0v64, types: [lq2] */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v66 */
    /* JADX WARN: Type inference failed for: r0v67 */
    /* JADX WARN: Type inference failed for: r0v68 */
    /* JADX WARN: Type inference failed for: r16v2, types: [l39] */
    /* JADX WARN: Type inference failed for: r16v3, types: [l39] */
    /* JADX WARN: Type inference failed for: r26v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v19, types: [c7] */
    /* JADX WARN: Type inference failed for: r8v2, types: [l39] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final vq2 l(String str, mm mmVar) throws Exception {
        InputStream inputStream;
        InputStream inputStream2;
        int i;
        InputStream inputStream3;
        InputStream inputStream4;
        long j;
        ?? iOException;
        boolean z = this.m;
        final long j2 = 0;
        rf8 rf8Var = this.a;
        if (z) {
            long jA = rf8Var.a.A();
            xf xfVar = new xf(1, this, n92.class, "openInputStreamAt", "openInputStreamAt(J)Ljava/io/InputStream;", 0, 2);
            l39 l39Var = new l39(this, str);
            m92 m92Var = new m92(0, this, n92.class, "shouldStopUpload", "shouldStopUpload()Z", 0, 0);
            c7 c7Var = new c7(this, 15);
            long j3 = this.l;
            int i2 = this.n;
            final mq2 mq2Var = new mq2(jA, j3, i2, xfVar, l39Var, m92Var, c7Var, mmVar);
            if (jA < 0) {
                c6.f("totalBytes must be >= 0");
                return null;
            }
            if (j3 <= 0) {
                c6.f("chunkSizeBytes must be > 0");
                return null;
            }
            if (i2 <= 0) {
                c6.f("maxAttempts must be > 0");
                return null;
            }
            int i3 = 0;
            ?? r0 = 0;
            String strJ = null;
            while (i3 < i2) {
                if (((Boolean) m92Var.invoke()).booleanValue()) {
                    if (r0 != 0) {
                        throw r0;
                    }
                    throw new IOException("Dropbox upload stopped");
                }
                if (i3 > 0 && r0 != 0 && !((Boolean) mq2Var.e.invoke(r0)).booleanValue()) {
                    throw r0;
                }
                try {
                    inputStream3 = (InputStream) mq2Var.c.invoke(Long.valueOf(j2));
                    ?? r8 = mq2Var.d;
                    if (strJ == null) {
                        i = i3;
                        try {
                            try {
                                long jMin = Math.min(j3, jA - j2);
                                strJ = r8.j(inputStream3, jMin, new mt3() { // from class: lq2
                                    @Override // defpackage.mt3
                                    public final Object invoke(Object obj) {
                                        mq2Var.a(((Long) obj).longValue() + j2);
                                        return be8.a;
                                    }
                                });
                                j2 += jMin;
                                mq2Var.a(j2);
                            } catch (Throwable th) {
                                th = th;
                                inputStream2 = inputStream3;
                            }
                        } catch (fr2 e) {
                            e = e;
                            long jI = l73.i(e.a, 0L, mq2Var.a);
                            mq2Var.a(jI);
                            f13.a(inputStream3);
                            j2 = jI;
                            i3 = i + 1;
                            r0 = e;
                        } catch (gr2 e2) {
                            e = e2;
                        }
                    } else {
                        i = i3;
                    }
                    strJ = strJ;
                    ?? r9 = r8;
                    while (true) {
                        long j4 = jA - j2;
                        if (j4 > j3) {
                            try {
                                try {
                                    if (((Boolean) m92Var.invoke()).booleanValue()) {
                                        if (r0 != 0) {
                                            iOException = r0;
                                        } else {
                                            try {
                                                iOException = new IOException("Dropbox upload stopped");
                                            } catch (fr2 e3) {
                                                e = e3;
                                                strJ = strJ;
                                                long jI2 = l73.i(e.a, 0L, mq2Var.a);
                                                mq2Var.a(jI2);
                                                f13.a(inputStream3);
                                                j2 = jI2;
                                                i3 = i + 1;
                                                r0 = e;
                                            } catch (gr2 e4) {
                                                e = e4;
                                                strJ = strJ;
                                                f13.a(inputStream3);
                                                i3 = i + 1;
                                                r0 = e;
                                            }
                                        }
                                        throw iOException;
                                    } else {
                                        try {
                                            inputStream4 = inputStream3;
                                            ?? r16 = r9;
                                            long j5 = j2;
                                            try {
                                                try {
                                                    r16.a(strJ, j5, inputStream4, mq2Var.b, new mt3() { // from class: lq2
                                                        @Override // defpackage.mt3
                                                        public final Object invoke(Object obj) {
                                                            mq2Var.a(((Long) obj).longValue() + j2);
                                                            return be8.a;
                                                        }
                                                    });
                                                    j2 = j5 + j3;
                                                    try {
                                                        mq2Var.a(j2);
                                                        r9 = r16;
                                                        inputStream3 = inputStream4;
                                                    } catch (gr2 e5) {
                                                        e = e5;
                                                        e = e;
                                                        inputStream3 = inputStream4;
                                                        f13.a(inputStream3);
                                                        i3 = i + 1;
                                                        r0 = e;
                                                    }
                                                } catch (gr2 e6) {
                                                    e = e6;
                                                    j2 = j5;
                                                }
                                            } catch (fr2 e7) {
                                                e = e7;
                                                strJ = strJ;
                                                inputStream3 = inputStream4;
                                                long jI3 = l73.i(e.a, 0L, mq2Var.a);
                                                mq2Var.a(jI3);
                                                f13.a(inputStream3);
                                                j2 = jI3;
                                                i3 = i + 1;
                                                r0 = e;
                                            } catch (Throwable th2) {
                                                th = th2;
                                            }
                                        } catch (fr2 e8) {
                                            e = e8;
                                            inputStream4 = inputStream3;
                                        } catch (gr2 e9) {
                                            e = e9;
                                            inputStream4 = inputStream3;
                                        }
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    inputStream4 = inputStream3;
                                }
                            } catch (fr2 e10) {
                                e = e10;
                            } catch (gr2 e11) {
                                e = e11;
                            }
                            inputStream2 = inputStream4;
                            f13.a(inputStream2);
                            throw th;
                        }
                        inputStream4 = inputStream3;
                        try {
                            j = j2;
                            try {
                                vq2 vq2VarE = r9.e(strJ, j, inputStream4, j4, new mt3() { // from class: lq2
                                    @Override // defpackage.mt3
                                    public final Object invoke(Object obj) {
                                        mq2Var.a(((Long) obj).longValue() + j2);
                                        return be8.a;
                                    }
                                });
                                mq2Var.a(jA);
                                f13.a(inputStream4);
                                return vq2VarE;
                            } catch (gr2 e12) {
                                e = e12;
                                j2 = j;
                                e = e;
                                inputStream3 = inputStream4;
                                f13.a(inputStream3);
                                i3 = i + 1;
                                r0 = e;
                            }
                        } catch (gr2 e13) {
                            e = e13;
                            j = j2;
                        }
                        inputStream3 = inputStream4;
                        f13.a(inputStream3);
                        i3 = i + 1;
                        r0 = e;
                    }
                } catch (fr2 e14) {
                    e = e14;
                    i = i3;
                    inputStream3 = null;
                } catch (gr2 e15) {
                    e = e15;
                    i = i3;
                    inputStream3 = null;
                } catch (Throwable th4) {
                    th = th4;
                    inputStream2 = null;
                }
            }
            ?? r26 = r0;
            if (r26 != 0) {
                throw r26;
            }
            throw new IOException(xs1.h(i2, "Dropbox upload failed after ", " attempts"));
        }
        try {
            i();
            q63 q63Var = rf8Var.a;
            boolean z2 = q63.d;
            InputStream inputStreamW = q63Var.w(true);
            try {
                l73.C(inputStreamW, 0L);
                this.o = inputStreamW;
                try {
                    inputStream = inputStreamW;
                    try {
                        vq2 vq2VarN = this.i.n(str, inputStream, rf8Var.a(), mmVar);
                        inputStream.close();
                        return vq2VarN;
                    } catch (Throwable th5) {
                        th = th5;
                        Throwable th6 = th;
                        try {
                            throw th6;
                        } catch (Throwable th7) {
                            rs9.c(inputStream, th6);
                            throw th7;
                        }
                    }
                } catch (Throwable th8) {
                    th = th8;
                    inputStream = inputStreamW;
                }
            } catch (Exception e16) {
                f13.a(inputStreamW);
                throw e16;
            }
        } catch (Exception e17) {
            throw k(e17);
        }
    }
}
