package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class md1 implements jl0 {
    public final qd1 a;
    public final boolean b;
    public final rd1 c;
    public final String d;
    public final String e;
    public final Long f;

    public md1(qd1 qd1Var, boolean z, rd1 rd1Var, String str, String str2, Long l) {
        qd1Var.getClass();
        rd1Var.getClass();
        this.a = qd1Var;
        this.b = z;
        this.c = rd1Var;
        this.d = str;
        this.e = str2;
        this.f = l;
    }

    public static md1 a(md1 md1Var, boolean z, rd1 rd1Var, String str, String str2, Long l, int i) {
        boolean z2 = z;
        qd1 qd1Var = md1Var.a;
        if ((i & 2) != 0) {
            z2 = md1Var.b;
        }
        if ((i & 4) != 0) {
            rd1Var = md1Var.c;
        }
        if ((i & 8) != 0) {
            str = md1Var.d;
        }
        if ((i & 16) != 0) {
            str2 = md1Var.e;
        }
        if ((i & 32) != 0) {
            l = md1Var.f;
        }
        Long l2 = l;
        md1Var.getClass();
        qd1Var.getClass();
        rd1Var.getClass();
        String str3 = str2;
        String str4 = str;
        return new md1(qd1Var, z2, rd1Var, str4, str3, l2);
    }

    public final boolean b() {
        qd1 qd1Var = this.a;
        return qd1Var.d && !qd1Var.f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof md1)) {
            return false;
        }
        md1 md1Var = (md1) obj;
        return pe4.d(this.a, md1Var.a) && this.b == md1Var.b && this.c == md1Var.c && pe4.d(this.d, md1Var.d) && pe4.d(this.e, md1Var.e) && pe4.d(this.f, md1Var.f);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        return a(this, false, null, null, null, null, 63);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a.a.name();
    }

    public final int hashCode() {
        int iHashCode = (this.c.hashCode() + fz5.h(this.a.hashCode() * 31, 31, this.b)) * 31;
        String str = this.d;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.e;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l = this.f;
        return iHashCode3 + (l != null ? l.hashCode() : 0);
    }

    public final String toString() {
        return "CloudDiagnosticItem(spec=" + this.a + ", isSelected=" + this.b + ", status=" + this.c + ", detail=" + this.d + ", progress=" + this.e + ", durationMillis=" + this.f + ")";
    }

    public md1(qd1 qd1Var) {
        this(qd1Var, qd1Var.e, rd1.NOT_RUN, null, null, null);
    }
}
