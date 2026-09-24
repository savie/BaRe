package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vi1 {
    public final dd1 a;
    public final fd1 b;
    public final String c;
    public final int d;
    public final String e;
    public final String f;
    public final long g;

    public vi1(dd1 dd1Var, fd1 fd1Var, String str, int i, String str2, String str3, long j) {
        dd1Var.getClass();
        fd1Var.getClass();
        str.getClass();
        this.a = dd1Var;
        this.b = fd1Var;
        this.c = str;
        this.d = i;
        this.e = str2;
        this.f = str3;
        this.g = j;
    }

    public final String a() {
        return this.c + ":" + this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vi1)) {
            return false;
        }
        vi1 vi1Var = (vi1) obj;
        return this.a == vi1Var.a && this.b == vi1Var.b && pe4.d(this.c, vi1Var.c) && this.d == vi1Var.d && pe4.d(this.e, vi1Var.e) && this.f.equals(vi1Var.f) && this.g == vi1Var.g;
    }

    public final int hashCode() {
        int iD = eq3.d(this.d, fz5.g((this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31, this.c), 31);
        String str = this.e;
        return Long.hashCode(this.g) + fz5.g((iD + (str == null ? 0 : str.hashCode())) * 31, 31, this.f);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CloudServerDiscoveryCandidate(cloudType=");
        sb.append(this.a);
        sb.append(", protocol=");
        sb.append(this.b);
        sb.append(", host=");
        sb.append(this.c);
        sb.append(", port=");
        sb.append(this.d);
        sb.append(", path=");
        xs1.t(sb, this.e, ", evidence=", this.f, ", elapsedMillis=");
        return dj7.h(this.g, ")", sb);
    }
}
