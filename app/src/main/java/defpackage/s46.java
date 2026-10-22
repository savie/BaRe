package defpackage;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s46 extends av3 {
    private static final s46 DEFAULT_INSTANCE;
    private static volatile cx5 PARSER = null;
    public static final int STRINGS_FIELD_NUMBER = 1;
    private xd4 strings_ = t96.d;

    static {
        s46 s46Var = new s46();
        DEFAULT_INSTANCE = s46Var;
        av3.j(s46.class, s46Var);
    }

    public static void l(s46 s46Var, Set set) {
        xd4 xd4Var = s46Var.strings_;
        if (!((t96) xd4Var).a) {
            t96 t96Var = (t96) xd4Var;
            int i = t96Var.c;
            s46Var.strings_ = t96Var.e(i == 0 ? 10 : i * 2);
        }
        RandomAccess randomAccess = s46Var.strings_;
        Charset charset = yd4.a;
        if (randomAccess instanceof ArrayList) {
            ((ArrayList) randomAccess).ensureCapacity(set.size() + ((t96) randomAccess).c);
        }
        t96 t96Var2 = (t96) randomAccess;
        int i2 = t96Var2.c;
        for (Object obj : set) {
            if (obj == null) {
                String str = "Element at index " + (t96Var2.c - i2) + " is null.";
                for (int i3 = t96Var2.c - 1; i3 >= i2; i3--) {
                    t96Var2.remove(i3);
                }
                f6.n(str);
                return;
            }
            t96Var2.add(obj);
        }
    }

    public static s46 m() {
        return DEFAULT_INSTANCE;
    }

    public static r46 o() {
        return (r46) ((yu3) DEFAULT_INSTANCE.c(5));
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
                return new hf6(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"strings_"});
            case 3:
                return new s46();
            case 4:
                return new r46(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                cx5 cx5Var = PARSER;
                if (cx5Var != null) {
                    return cx5Var;
                }
                synchronized (s46.class) {
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

    public final xd4 n() {
        return this.strings_;
    }
}
