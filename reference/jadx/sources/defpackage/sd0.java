package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sd0 implements rj7 {
    public static final sd0 k = new sd0("00000000000000000000000000000000", "0000000000000000", sa4.d, u40.c, false, false);
    public final String a;
    public final String b;
    public final z88 c;
    public final a98 d;
    public final boolean e;
    public final boolean f;

    public sd0(String str, String str2, z88 z88Var, a98 a98Var, boolean z, boolean z2) {
        this.a = str;
        this.b = str2;
        if (z88Var == null) {
            f6.n("Null traceFlags");
            throw null;
        }
        this.c = z88Var;
        if (a98Var == null) {
            f6.n("Null traceState");
            throw null;
        }
        this.d = a98Var;
        this.e = z;
        this.f = z2;
    }

    public static sd0 a(String str, String str2, z88 z88Var, a98 a98Var, boolean z) {
        if (str2.length() == 16 && !"0000000000000000".contentEquals(str2)) {
            char[] cArr = uu5.a;
            int length = str2.length();
            for (int i = 0; i < length; i++) {
                if (uu5.c[str2.charAt(i)]) {
                }
            }
            if (str.length() == 32 && !"00000000000000000000000000000000".contentEquals(str)) {
                char[] cArr2 = uu5.a;
                int length2 = str.length();
                for (int i2 = 0; i2 < length2; i2++) {
                    if (uu5.c[str.charAt(i2)]) {
                    }
                }
                return new sd0(str, str2, z88Var, a98Var, z, true);
            }
        }
        return new sd0("00000000000000000000000000000000", "0000000000000000", z88Var, a98Var, z, false);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof sd0)) {
            return false;
        }
        sd0 sd0Var = (sd0) obj;
        return this.a.equals(sd0Var.a) && this.b.equals(sd0Var.b) && this.c.equals(sd0Var.c) && this.d.equals(sd0Var.d) && this.e == sd0Var.e && this.f == sd0Var.f;
    }

    @Override // defpackage.rj7
    public final String getSpanId() {
        return this.b;
    }

    @Override // defpackage.rj7
    public final z88 getTraceFlags() {
        return this.c;
    }

    @Override // defpackage.rj7
    public final String getTraceId() {
        return this.a;
    }

    @Override // defpackage.rj7
    public final a98 getTraceState() {
        return this.d;
    }

    public final int hashCode() {
        return ((((((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ (this.e ? 1231 : 1237)) * 1000003) ^ (this.f ? 1231 : 1237);
    }

    @Override // defpackage.rj7
    public final boolean isValid() {
        return this.f;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ImmutableSpanContext{traceId=");
        sb.append(this.a);
        sb.append(", spanId=");
        sb.append(this.b);
        sb.append(", traceFlags=");
        sb.append(this.c);
        sb.append(", traceState=");
        sb.append(this.d);
        sb.append(", remote=");
        sb.append(this.e);
        sb.append(", valid=");
        return dj7.p(sb, this.f, "}");
    }
}
