package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class od1 {
    public final String a;
    public final String b;

    public od1(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof od1)) {
            return false;
        }
        od1 od1Var = (od1) obj;
        return this.a.equals(od1Var.a) && this.b.equals(od1Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return eq3.l("RunningDetail(title=", this.a, ", progress=", this.b, ")");
    }
}
