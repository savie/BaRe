package defpackage;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q46 extends av3 {
    private static final q46 DEFAULT_INSTANCE;
    private static volatile cx5 PARSER = null;
    public static final int PREFERENCES_FIELD_NUMBER = 1;
    private k65 preferences_ = k65.b;

    static {
        q46 q46Var = new q46();
        DEFAULT_INSTANCE = q46Var;
        av3.j(q46.class, q46Var);
    }

    public static k65 l(q46 q46Var) {
        k65 k65Var = q46Var.preferences_;
        if (!k65Var.a) {
            q46Var.preferences_ = k65Var.b();
        }
        return q46Var.preferences_;
    }

    public static o46 n() {
        return (o46) ((yu3) DEFAULT_INSTANCE.c(5));
    }

    public static q46 o(FileInputStream fileInputStream) {
        q46 q46Var = DEFAULT_INSTANCE;
        fk1 fk1Var = new fk1(fileInputStream);
        c13 c13VarA = c13.a();
        av3 av3VarI = q46Var.i();
        try {
            s96 s96Var = s96.c;
            s96Var.getClass();
            k57 k57VarA = s96Var.a(av3VarI.getClass());
            hk1 hk1Var = (hk1) fk1Var.b;
            if (hk1Var == null) {
                hk1Var = new hk1(fk1Var);
            }
            k57VarA.f(av3VarI, hk1Var, c13VarA);
            k57VarA.c(av3VarI);
            if (av3.f(av3VarI, true)) {
                return (q46) av3VarI;
            }
            throw new fg4(new ae8().getMessage());
        } catch (ae8 e) {
            throw new fg4(e.getMessage());
        } catch (fg4 e2) {
            if (e2.a) {
                throw new fg4(e2.getMessage(), e2);
            }
            throw e2;
        } catch (IOException e3) {
            if (e3.getCause() instanceof fg4) {
                throw ((fg4) e3.getCause());
            }
            throw new fg4(e3.getMessage(), e3);
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof fg4) {
                throw ((fg4) e4.getCause());
            }
            throw e4;
        }
    }

    @Override // defpackage.av3
    public final Object c(int i) {
        cx5 zu3Var;
        switch (dj7.A(i)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new hf6(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"preferences_", p46.a});
            case 3:
                return new q46();
            case 4:
                return new o46(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                cx5 cx5Var = PARSER;
                if (cx5Var != null) {
                    return cx5Var;
                }
                synchronized (q46.class) {
                    try {
                        zu3Var = PARSER;
                        if (zu3Var == null) {
                            zu3Var = new zu3();
                            PARSER = zu3Var;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return zu3Var;
            default:
                x5.e();
                return null;
        }
    }

    public final Map m() {
        return Collections.unmodifiableMap(this.preferences_);
    }
}
