package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class az6 {
    public final boolean a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final boolean g;

    public az6(int i) {
        boolean z = (i & 2) == 0;
        boolean z2 = (i & 4) == 0;
        boolean z3 = (i & 8) == 0;
        boolean z4 = (i & 16) == 0;
        boolean z5 = (i & 32) == 0;
        boolean z6 = (i & 64) == 0;
        this.a = true;
        this.b = z;
        this.c = z2;
        this.d = z3;
        this.e = z4;
        this.f = z5;
        this.g = z6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof az6)) {
            return false;
        }
        az6 az6Var = (az6) obj;
        return this.a == az6Var.a && this.b == az6Var.b && this.c == az6Var.c && this.d == az6Var.d && this.e == az6Var.e && this.f == az6Var.f && this.g == az6Var.g;
    }

    public final int hashCode() {
        return Boolean.hashCode(false) + fz5.h(fz5.h(fz5.h(fz5.h(fz5.h(fz5.h(fz5.h(Boolean.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f), 31, this.g), 31, false);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SbaExtractOptions(restoreTimestamps=");
        sb.append(this.a);
        sb.append(", restorePermissions=");
        sb.append(this.b);
        sb.append(", restoreOwnership=");
        sb.append(this.c);
        sb.append(", restoreXattrs=");
        sb.append(this.d);
        sb.append(", restoreSelinuxLabels=");
        sb.append(this.e);
        sb.append(", restoreSparseFiles=");
        sb.append(this.f);
        sb.append(", restoreSpecialModeBits=");
        return dj7.p(sb, this.g, ", allowSpecialFiles=false, failOnMetadataError=false)");
    }
}
