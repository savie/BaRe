package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kj1 {
    public final String a;
    public final int b;
    public final dd1 c;
    public final fd1 d;
    public final String e;

    public kj1(String str, int i, dd1 dd1Var, fd1 fd1Var, String str2) {
        str.getClass();
        dd1Var.getClass();
        fd1Var.getClass();
        this.a = str;
        this.b = i;
        this.c = dd1Var;
        this.d = fd1Var;
        this.e = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kj1)) {
            return false;
        }
        kj1 kj1Var = (kj1) obj;
        return pe4.d(this.a, kj1Var.a) && this.b == kj1Var.b && this.c == kj1Var.c && this.d == kj1Var.d && pe4.d(this.e, kj1Var.e);
    }

    public final int hashCode() {
        int iHashCode = (this.d.hashCode() + ((this.c.hashCode() + eq3.d(this.b, this.a.hashCode() * 31, 31)) * 31)) * 31;
        String str = this.e;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sbV = dj7.v("CloudServerProbeTarget(host=", this.a, ", port=", this.b, ", cloudType=");
        sbV.append(this.c);
        sbV.append(", protocol=");
        sbV.append(this.d);
        sbV.append(", path=");
        return dj7.n(sbV, this.e, ")");
    }
}
