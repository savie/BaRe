package defpackage;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class uc9 implements ke9 {
    public static final Object d = new Object();
    public static final ie9 e = new ie9(ue9.class);
    public static final boolean f;
    public static final ho6 k;
    public volatile Object a;
    public volatile nc9 b;
    public volatile sc9 c;

    static {
        boolean z;
        ho6 qc9Var;
        Throwable th;
        Throwable th2;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        f = z;
        String property = System.getProperty("java.runtime.name", "");
        Throwable th3 = null;
        if (property == null || property.contains("Android")) {
            try {
                qc9Var = new rc9();
            } catch (Error | Exception e2) {
                try {
                    qc9Var = new pc9();
                } catch (Error | Exception e3) {
                    th3 = e3;
                    qc9Var = new qc9();
                }
                th = th3;
                th2 = e2;
            }
        } else {
            try {
                qc9Var = new pc9();
            } catch (NoClassDefFoundError unused2) {
                qc9Var = new qc9();
            }
        }
        th = null;
        th2 = null;
        k = qc9Var;
        if (th != null) {
            ie9 ie9Var = e;
            Logger loggerA = ie9Var.a();
            Level level = Level.SEVERE;
            loggerA.logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            ie9Var.a().logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "AtomicReferenceFieldUpdaterAtomicHelper is broken!", th);
        }
    }

    public final void a(sc9 sc9Var) {
        sc9Var.a = null;
        while (true) {
            sc9 sc9Var2 = this.c;
            if (sc9Var2 != sc9.c) {
                sc9 sc9Var3 = null;
                while (sc9Var2 != null) {
                    sc9 sc9Var4 = sc9Var2.b;
                    if (sc9Var2.a != null) {
                        sc9Var3 = sc9Var2;
                    } else if (sc9Var3 != null) {
                        sc9Var3.b = sc9Var4;
                        if (sc9Var3.a == null) {
                        }
                    } else if (!k.i0(this, sc9Var2, sc9Var4)) {
                    }
                    sc9Var2 = sc9Var4;
                }
                return;
            }
            return;
        }
    }

    public abstract Throwable b();
}
