package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qd1 {
    public final sd1 a;
    public final int b;
    public final int c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final Integer g;
    public final dd1 h;

    public /* synthetic */ qd1(sd1 sd1Var, int i, int i2, boolean z, boolean z2, Integer num, int i3) {
        this(sd1Var, i, i2, z, z2, (i3 & 32) == 0, (i3 & 64) != 0 ? null : num, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qd1)) {
            return false;
        }
        qd1 qd1Var = (qd1) obj;
        return this.a == qd1Var.a && this.b == qd1Var.b && this.c == qd1Var.c && this.d == qd1Var.d && this.e == qd1Var.e && this.f == qd1Var.f && pe4.d(this.g, qd1Var.g) && this.h == qd1Var.h;
    }

    public final int hashCode() {
        int iH = fz5.h(fz5.h(fz5.h(eq3.d(this.c, eq3.d(this.b, this.a.hashCode() * 31, 31), 31), 31, this.d), 31, this.e), 31, this.f);
        Integer num = this.g;
        int iHashCode = (iH + (num == null ? 0 : num.hashCode())) * 31;
        dd1 dd1Var = this.h;
        return iHashCode + (dd1Var != null ? dd1Var.hashCode() : 0);
    }

    public final String toString() {
        return "CloudDiagnosticSpec(id=" + this.a + ", titleRes=" + this.b + ", summaryRes=" + this.c + ", isAvailable=" + this.d + ", isSelected=" + this.e + ", isRequired=" + this.f + ", unavailableReasonRes=" + this.g + ", unavailableReasonCloudType=" + this.h + ")";
    }

    public qd1(sd1 sd1Var, int i, int i2, boolean z, boolean z2, boolean z3, Integer num, dd1 dd1Var) {
        sd1Var.getClass();
        this.a = sd1Var;
        this.b = i;
        this.c = i2;
        this.d = z;
        this.e = z2;
        this.f = z3;
        this.g = num;
        this.h = dd1Var;
    }
}
