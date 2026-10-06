package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class qr5 extends ar5 implements Serializable {
    public static final en0 f;
    public final wj4 a;
    public v77 b;
    public final uf2 c;
    public final rp0 d;
    public pi2 e;

    static {
        yg4 yg4Var = new yg4();
        yg4Var.a = new wp4(48, 48);
        yg4Var.b = true;
        f = new en0(null, yg4Var, lc8.c, mn7.x, Locale.getDefault(), cl0.a, new mp7());
    }

    public qr5(wj4 wj4Var) {
        new ConcurrentHashMap(64, 0.6f, 2);
        this.a = wj4Var;
        if (wj4Var.d == null) {
            wj4Var.d = this;
        }
        un7 un7Var = new un7();
        op6 op6Var = new op6();
        op6Var.a = new wp4(20, 200);
        gc8[] gc8VarArr = lc8.b;
        jg7 jg7Var = new jg7();
        xo0 xo0Var = new xo0();
        en0 en0Var = f;
        en0 en0Var2 = en0Var.b == xo0Var ? en0Var : new en0(xo0Var, en0Var.c, en0Var.a, en0Var.e, en0Var.f, en0Var.k, en0Var.d);
        qk4 qk4Var = qk4.e;
        mp7 mp7Var = new mp7();
        int[] iArr = new int[dj5.a];
        uk1 uk1Var = new uk1();
        cd2 cd2Var = bd2.a;
        this.b = new v77(en0Var2, un7Var, jg7Var, op6Var, mp7Var, cd2Var);
        this.e = new pi2(en0Var2, un7Var, jg7Var, op6Var, mp7Var, uk1Var, cd2Var);
        v77 v77Var = this.b;
        u65 u65Var = u65.SORT_PROPERTIES_ALPHABETICALLY;
        if (v77Var.i(u65Var)) {
            b(u65Var, false);
        }
        this.c = new uf2();
        new wp4(Math.min(64, 500), 2000);
        new HashMap(8);
        new ReentrantLock();
        this.d = rp0.q;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(pw8 pw8Var, gc6 gc6Var) throws Throwable {
        v77 v77Var = this.b;
        boolean zL = v77Var.l(x77.CLOSE_CLOSEABLE);
        rp0 rp0Var = this.d;
        uf2 uf2Var = this.c;
        if (!zL || !(gc6Var instanceof Closeable)) {
            try {
                uf2Var.getClass();
                new uf2(uf2Var, v77Var, rp0Var).G(pw8Var, gc6Var);
                pw8Var.close();
                return;
            } catch (Exception e) {
                Annotation[] annotationArr = u81.a;
                pw8Var.r0(ek4.AUTO_CLOSE_JSON_CONTENT);
                try {
                    pw8Var.close();
                } catch (Exception e2) {
                    e.addSuppressed(e2);
                }
                if (e instanceof IOException) {
                    throw ((IOException) e);
                }
                u81.v(e);
                y5.k(e);
                return;
            }
        }
        Closeable closeable = (Closeable) gc6Var;
        try {
            uf2Var.getClass();
            new uf2(uf2Var, v77Var, rp0Var).G(pw8Var, gc6Var);
            try {
                closeable.close();
                pw8Var.close();
            } catch (Exception e3) {
                e = e3;
                closeable = null;
                Annotation[] annotationArr2 = u81.a;
                pw8Var.r0(ek4.AUTO_CLOSE_JSON_CONTENT);
                try {
                    pw8Var.close();
                } catch (Exception e4) {
                    e.addSuppressed(e4);
                }
                if (closeable != null) {
                    try {
                        closeable.close();
                    } catch (Exception e5) {
                        e.addSuppressed(e5);
                    }
                }
                if (e instanceof IOException) {
                    throw ((IOException) e);
                }
                u81.v(e);
                y5.k(e);
            }
        } catch (Exception e6) {
            e = e6;
        }
    }

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
    public final void b(u65 u65Var, boolean z) {
        v77 v77VarJ;
        pi2 pi2VarJ;
        v77 v77Var = this.b;
        if (z) {
            long j = v77Var.a;
            long j2 = new u65[]{u65Var}[0].b | j;
            if (j2 != j) {
                v77VarJ = v77Var;
                v77VarJ = v77Var.j(j2);
            }
        } else {
            long j3 = v77Var.a;
            long j4 = (~new u65[]{u65Var}[0].b) & j3;
            if (j4 != j3) {
                v77VarJ = v77Var;
                v77VarJ = v77Var.j(j4);
            }
        }
        v77VarJ = v77Var;
        v77VarJ = v77Var;
        this.b = v77VarJ;
        pi2 pi2Var = this.e;
        if (z) {
            long j5 = pi2Var.a;
            long j6 = new u65[]{u65Var}[0].b | j5;
            if (j6 != j5) {
                pi2VarJ = pi2Var;
                pi2VarJ = pi2Var.j(j6);
            }
        } else {
            long j7 = pi2Var.a;
            long j8 = (~new u65[]{u65Var}[0].b) & j7;
            if (j8 != j7) {
                pi2VarJ = pi2Var;
                pi2VarJ = pi2Var.j(j8);
            }
        }
        pi2VarJ = pi2Var;
        pi2VarJ = pi2Var;
        this.e = pi2VarJ;
    }

    public final pw8 c(q67 q67Var) {
        wj4 wj4Var = this.a;
        vu1 vu1Var = new vu1(q67Var, wj4Var.e);
        qw0 qw0VarU = (qw0) q67Var.a.g;
        boolean z = qw0VarU != null;
        if (qw0VarU == null) {
            qw0VarU = (!eq3.a(4, wj4Var.a) ? vl4.a : wj4Var.c).u();
        }
        c84 c84Var = new c84(wj4Var.f, qw0VarU, vu1Var);
        if (z) {
            c84Var.c = false;
        }
        pw8 pw8Var = new pw8(c84Var, wj4Var.b, q67Var, wj4Var.n);
        z77 z77Var = wj4Var.k;
        if (z77Var != wj4.r) {
            pw8Var.r = z77Var;
        }
        v77 v77Var = this.b;
        v77Var.getClass();
        x77 x77Var = x77.INDENT_OUTPUT;
        int i = v77Var.t;
        if ((x77Var.b & i) != 0 && pw8Var.a == null) {
            r56 r56Var = v77Var.r;
            if (r56Var instanceof kf2) {
                kf2 kf2Var = (kf2) r56Var;
                kf2 kf2Var2 = new kf2();
                kf2Var2.a = jf2.a;
                kf2Var2.b = re2.d;
                kf2Var2.c = kf2Var.c;
                kf2Var2.a = kf2Var.a;
                kf2Var2.b = kf2Var.b;
                kf2Var2.d = kf2Var.d;
                kf2Var2.e = kf2Var.e;
                kf2Var2.f = kf2Var.f;
                kf2Var2.k = kf2Var.k;
                kf2Var2.n = kf2Var.n;
                kf2Var2.p = kf2Var.p;
                r56Var = kf2Var2;
            }
            if (r56Var != null) {
                pw8Var.a = r56Var;
            }
        }
        boolean z2 = (x77.WRITE_BIGDECIMAL_AS_PLAIN.b & i) != 0;
        if (z2) {
            int i2 = z2 ? ek4.WRITE_BIGDECIMAL_AS_PLAIN.b : 0;
            int i3 = i2;
            int i4 = pw8Var.b;
            int i5 = (i2 & i3) | ((~i3) & i4);
            int i6 = i4 ^ i5;
            if (i6 != 0) {
                pw8Var.b = i5;
                if ((cv3.k & i6) != 0) {
                    pw8Var.d = ek4.WRITE_NUMBERS_AS_STRINGS.a(i5);
                    ek4 ek4Var = ek4.ESCAPE_NON_ASCII;
                    if (ek4Var.a(i6)) {
                        if (ek4Var.a(i5)) {
                            pw8Var.q = 127;
                        } else {
                            pw8Var.q = 0;
                        }
                    }
                    ek4 ek4Var2 = ek4.STRICT_DUPLICATE_DETECTION;
                    if (ek4Var2.a(i6)) {
                        boolean zA = ek4Var2.a(i5);
                        v08 v08Var = pw8Var.e;
                        if (!zA) {
                            v08Var.h = null;
                            pw8Var.e = v08Var;
                        } else if (((f41) v08Var.h) == null) {
                            v08Var.h = new f41(pw8Var);
                            pw8Var.e = v08Var;
                        }
                    }
                }
                pw8Var.t = !ek4.QUOTE_FIELD_NAMES.a(i5);
                pw8Var.x = ek4.WRITE_HEX_UPPER_CASE.a(i5);
            }
        }
        return pw8Var;
    }
}
