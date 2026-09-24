package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bv0 {
    public final String a;
    public final String b;

    public bv0(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bv0)) {
            return false;
        }
        bv0 bv0Var = (bv0) obj;
        return this.a.equals(bv0Var.a) && this.b.equals(bv0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return eq3.l("BoxFolder(id=", this.a, ", name=", this.b, ")");
    }
}
