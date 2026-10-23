package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u46 extends av3 {
    public static final int BOOLEAN_FIELD_NUMBER = 1;
    public static final int BYTES_FIELD_NUMBER = 8;
    private static final u46 DEFAULT_INSTANCE;
    public static final int DOUBLE_FIELD_NUMBER = 7;
    public static final int FLOAT_FIELD_NUMBER = 2;
    public static final int INTEGER_FIELD_NUMBER = 3;
    public static final int LONG_FIELD_NUMBER = 4;
    private static volatile cx5 PARSER = null;
    public static final int STRING_FIELD_NUMBER = 5;
    public static final int STRING_SET_FIELD_NUMBER = 6;
    private int valueCase_ = 0;
    private Object value_;

    static {
        u46 u46Var = new u46();
        DEFAULT_INSTANCE = u46Var;
        av3.j(u46.class, u46Var);
    }

    public static t46 D() {
        return (t46) ((yu3) DEFAULT_INSTANCE.c(5));
    }

    public static void l(u46 u46Var, long j) {
        u46Var.valueCase_ = 4;
        u46Var.value_ = Long.valueOf(j);
    }

    public static void m(u46 u46Var, String str) {
        u46Var.getClass();
        u46Var.valueCase_ = 5;
        u46Var.value_ = str;
    }

    public static void n(u46 u46Var, s46 s46Var) {
        u46Var.getClass();
        u46Var.value_ = s46Var;
        u46Var.valueCase_ = 6;
    }

    public static void o(u46 u46Var, double d) {
        u46Var.valueCase_ = 7;
        u46Var.value_ = Double.valueOf(d);
    }

    public static void p(u46 u46Var, gy0 gy0Var) {
        u46Var.getClass();
        u46Var.valueCase_ = 8;
        u46Var.value_ = gy0Var;
    }

    public static void q(u46 u46Var, boolean z) {
        u46Var.valueCase_ = 1;
        u46Var.value_ = Boolean.valueOf(z);
    }

    public static void r(u46 u46Var, float f) {
        u46Var.valueCase_ = 2;
        u46Var.value_ = Float.valueOf(f);
    }

    public static void s(u46 u46Var, int i) {
        u46Var.valueCase_ = 3;
        u46Var.value_ = Integer.valueOf(i);
    }

    public static u46 v() {
        return DEFAULT_INSTANCE;
    }

    public final String A() {
        return this.valueCase_ == 5 ? (String) this.value_ : "";
    }

    public final s46 B() {
        return this.valueCase_ == 6 ? (s46) this.value_ : s46.m();
    }

    public final int C() {
        switch (this.valueCase_) {
            case 0:
                return 9;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            case 7:
                return 7;
            case 8:
                return 8;
            default:
                return 0;
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
                return new hf6(DEFAULT_INSTANCE, "\u0001\b\u0001\u0000\u0001\b\b\u0000\u0000\u0000\u0001:\u0000\u00024\u0000\u00037\u0000\u00045\u0000\u0005;\u0000\u0006<\u0000\u00073\u0000\b=\u0000", new Object[]{"value_", "valueCase_", s46.class});
            case 3:
                return new u46();
            case 4:
                return new t46(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                cx5 cx5Var = PARSER;
                if (cx5Var != null) {
                    return cx5Var;
                }
                synchronized (u46.class) {
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

    public final boolean t() {
        if (this.valueCase_ == 1) {
            return ((Boolean) this.value_).booleanValue();
        }
        return false;
    }

    public final gy0 u() {
        return this.valueCase_ == 8 ? (gy0) this.value_ : gy0.c;
    }

    public final double w() {
        if (this.valueCase_ == 7) {
            return ((Double) this.value_).doubleValue();
        }
        return 0.0d;
    }

    public final float x() {
        if (this.valueCase_ == 2) {
            return ((Float) this.value_).floatValue();
        }
        return 0.0f;
    }

    public final int y() {
        if (this.valueCase_ == 3) {
            return ((Integer) this.value_).intValue();
        }
        return 0;
    }

    public final long z() {
        if (this.valueCase_ == 4) {
            return ((Long) this.value_).longValue();
        }
        return 0L;
    }
}
