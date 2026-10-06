package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ky6 {
    public final String a;
    public final String b;
    public final int c;
    public final long d;
    public final String e;
    public final gy6 f;
    public final hy6 g;
    public final fy6 h;
    public final List i;

    public ky6(String str, String str2, int i, long j, String str3, gy6 gy6Var, hy6 hy6Var, fy6 fy6Var, List list) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = j;
        this.e = str3;
        this.f = gy6Var;
        this.g = hy6Var;
        this.h = fy6Var;
        this.i = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ky6)) {
            return false;
        }
        ky6 ky6Var = (ky6) obj;
        return pe4.d(this.a, ky6Var.a) && pe4.d(this.b, ky6Var.b) && this.c == ky6Var.c && this.d == ky6Var.d && pe4.d(this.e, ky6Var.e) && this.f.equals(ky6Var.f) && this.g.equals(ky6Var.g) && this.h.equals(ky6Var.h) && this.i.equals(ky6Var.i);
    }

    public final int hashCode() {
        return this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + fz5.g(xs1.f(this.d, (fz5.g(this.a.hashCode() * 31, 31, this.b) + this.c) * 31, 31), 31, this.e)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("SbaArchiveInfo(formatName=", this.a, ", magic=", this.b, ", version=");
        sbP.append(this.c);
        sbP.append(", fileSize=");
        sbP.append(this.d);
        sbP.append(", metadata=");
        sbP.append(this.e);
        sbP.append(", header=");
        sbP.append(this.f);
        sbP.append(", index=");
        sbP.append(this.g);
        sbP.append(", footer=");
        sbP.append(this.h);
        sbP.append(", entries=");
        sbP.append(this.i);
        sbP.append(")");
        return sbP.toString();
    }
}
