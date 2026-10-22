package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gy8 {
    public final String a;
    public final String b;
    public final boolean c;

    public gy8(String str, String str2, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gy8)) {
            return false;
        }
        gy8 gy8Var = (gy8) obj;
        return this.a.equals(gy8Var.a) && this.b.equals(gy8Var.b) && this.c == gy8Var.c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + fz5.g(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return dj7.p(u48.p("YandexLink(href=", this.a, ", method=", this.b, ", templated="), this.c, ")");
    }
}
