package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mv5 {
    public final String a;
    public final String b;
    public final gv7 c;

    public mv5(String str, String str2) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = new gv7(new pr4(this, 7));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mv5)) {
            return false;
        }
        mv5 mv5Var = (mv5) obj;
        return pe4.d(this.a, mv5Var.a) && this.b.equals(mv5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return eq3.l("ClientProvider(token=", this.a, ", apiHost=", this.b, ")");
    }
}
