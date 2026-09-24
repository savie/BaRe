package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ke5 {
    public final q63 a;

    public ke5(q63 q63Var) {
        q63Var.getClass();
        this.a = q63Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ke5) && pe4.d(this.a, ((ke5) obj).a);
    }

    public final int hashCode() {
        return this.a.a.hashCode();
    }

    public final String toString() {
        return "RestoreActivityRequest(itemFile=" + this.a + ")";
    }
}
