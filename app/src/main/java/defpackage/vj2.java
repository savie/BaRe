package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vj2 {
    public final boolean a;
    public final boolean b;
    public final String c;
    public final String d;
    public final String e;
    public final boolean f;

    public vj2(boolean z, boolean z2, String str, String str2, String str3, boolean z3) {
        str.getClass();
        str2.getClass();
        this.a = z;
        this.b = z2;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vj2)) {
            return false;
        }
        vj2 vj2Var = (vj2) obj;
        return this.a == vj2Var.a && this.b == vj2Var.b && pe4.d(this.c, vj2Var.c) && pe4.d(this.d, vj2Var.d) && this.e.equals(vj2Var.e) && this.f == vj2Var.f;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f) + fz5.g(fz5.g(fz5.g(fz5.h(Boolean.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AppInfoState(isInstalled=");
        sb.append(this.a);
        sb.append(", disabled=");
        sb.append(this.b);
        sb.append(", packageName=");
        xs1.t(sb, this.c, ", appName=", this.d, ", appVersion=");
        sb.append(this.e);
        sb.append(", isLaunchable=");
        sb.append(this.f);
        sb.append(")");
        return sb.toString();
    }
}
