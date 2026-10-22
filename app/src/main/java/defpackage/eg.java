package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eg extends ig {
    public final bg a;
    public final cw5 b;

    public eg(bg bgVar, cw5 cw5Var) {
        cw5Var.getClass();
        this.a = bgVar;
        this.b = cw5Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof eg)) {
            return false;
        }
        eg egVar = (eg) obj;
        return pe4.d(this.a, egVar.a) && pe4.d(this.b, egVar.b);
    }

    public final int hashCode() {
        bg bgVar = this.a;
        return this.b.hashCode() + ((bgVar == null ? 0 : bgVar.hashCode()) * 31);
    }

    public final String toString() {
        return "Error(packageInfo=" + this.a + ", failure=" + this.b + ")";
    }
}
