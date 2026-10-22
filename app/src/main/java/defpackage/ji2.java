package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ji2 {
    public final nc6 a;
    public final int b;
    public final int c;

    public ji2(nc6 nc6Var, int i, int i2) {
        bb9.m(nc6Var, "Null dependency anInterface.");
        this.a = nc6Var;
        this.b = i;
        this.c = i2;
    }

    public static ji2 a(nc6 nc6Var) {
        return new ji2(nc6Var, 1, 0);
    }

    public static ji2 b(Class cls) {
        return new ji2(1, 0, cls);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ji2)) {
            return false;
        }
        ji2 ji2Var = (ji2) obj;
        return this.a.equals(ji2Var.a) && this.b == ji2Var.b && this.c == ji2Var.c;
    }

    public final int hashCode() {
        return this.c ^ ((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b) * 1000003);
    }

    public final String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.a);
        sb.append(", type=");
        int i = this.b;
        if (i == 1) {
            str = "required";
        } else {
            str = i == 0 ? "optional" : "set";
        }
        sb.append(str);
        sb.append(", injection=");
        int i2 = this.c;
        if (i2 == 0) {
            str2 = "direct";
        } else if (i2 == 1) {
            str2 = "provider";
        } else {
            if (i2 != 2) {
                e6.e(fz5.j(i2, "Unsupported injection: "));
                return null;
            }
            str2 = "deferred";
        }
        return dj7.n(sb, str2, "}");
    }

    public ji2(int i, int i2, Class cls) {
        this(nc6.a(cls), i, i2);
    }
}
