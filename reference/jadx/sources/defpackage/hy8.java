package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hy8 {
    public final String a;
    public final String b;
    public final String c;
    public final long d;
    public final long e;
    public final long f;
    public final String g;
    public final List h;

    public hy8(String str, String str2, String str3, long j, long j2, long j3, String str4, List list) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = j;
        this.e = j2;
        this.f = j3;
        this.g = str4;
        this.h = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hy8)) {
            return false;
        }
        hy8 hy8Var = (hy8) obj;
        return this.a.equals(hy8Var.a) && this.b.equals(hy8Var.b) && this.c.equals(hy8Var.c) && this.d == hy8Var.d && this.e == hy8Var.e && this.f == hy8Var.f && pe4.d(this.g, hy8Var.g) && this.h.equals(hy8Var.h);
    }

    public final int hashCode() {
        int iF = xs1.f(this.f, xs1.f(this.e, xs1.f(this.d, fz5.g(fz5.g(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31), 31), 31);
        String str = this.g;
        return this.h.hashCode() + ((iF + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("YandexResource(name=", this.a, ", path=", this.b, ", type=");
        sbP.append(this.c);
        sbP.append(", size=");
        sbP.append(this.d);
        fz5.r(sbP, ", createdMillis=", this.e, ", modifiedMillis=");
        sbP.append(this.f);
        sbP.append(", preview=");
        sbP.append(this.g);
        sbP.append(", embeddedItems=");
        sbP.append(this.h);
        sbP.append(")");
        return sbP.toString();
    }
}
