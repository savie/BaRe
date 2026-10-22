package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nr {
    public final String a;
    public final boolean b;
    public final boolean c;
    public final int d;
    public final int e;
    public final int f;
    public final String g;

    public nr(String str, boolean z, boolean z2, int i, int i2, int i3, String str2) {
        str.getClass();
        this.a = str;
        this.b = z;
        this.c = z2;
        this.d = i;
        this.e = i2;
        this.f = i3;
        this.g = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nr)) {
            return false;
        }
        nr nrVar = (nr) obj;
        return pe4.d(this.a, nrVar.a) && this.b == nrVar.b && this.c == nrVar.c && this.d == nrVar.d && this.e == nrVar.e && this.f == nrVar.f && this.g.equals(nrVar.g);
    }

    public final int hashCode() {
        return this.g.hashCode() + eq3.d(this.f, eq3.d(this.e, eq3.d(this.d, fz5.h(fz5.h(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PackageNameTextKey(packageName=");
        sb.append(this.a);
        sb.append(", enabled=");
        sb.append(this.b);
        sb.append(", bundled=");
        sb.append(this.c);
        sb.append(", textColorSecondaryAlpha=");
        sb.append(this.d);
        sb.append(", disabledPackageNameColor=");
        xs1.s(sb, this.e, ", bundledPackageNameColor=", this.f, ", disabledText=");
        return dj7.n(sb, this.g, ")");
    }
}
