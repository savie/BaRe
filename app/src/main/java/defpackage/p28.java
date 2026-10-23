package defpackage;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p28 implements ev1 {
    public static final p28 a;
    public static final Logger b;
    public static final ThreadLocal c;
    public static final /* synthetic */ p28[] d;

    static {
        p28 p28Var = new p28("INSTANCE", 0);
        a = p28Var;
        d = new p28[]{p28Var};
        b = Logger.getLogger(p28.class.getName());
        c = new ThreadLocal();
    }

    public static p28 valueOf(String str) {
        return (p28) Enum.valueOf(p28.class, str);
    }

    public static p28[] values() {
        return (p28[]) d.clone();
    }

    @Override // defpackage.ev1
    public final v57 a(final t40 t40Var) {
        final t40 t40VarCurrent = current();
        if (t40Var == t40VarCurrent) {
            return o28.a;
        }
        c.set(t40Var);
        return new v57() { // from class: n28
            @Override // java.lang.AutoCloseable
            public final void close() {
                if (this.a.current() != t40Var) {
                    p28.b.log(Level.FINE, "Context in storage not the expected context, Scope.close was not called correctly");
                }
                p28.c.set(t40VarCurrent);
            }
        };
    }

    @Override // defpackage.ev1
    public final t40 current() {
        return (t40) c.get();
    }
}
