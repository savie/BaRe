package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z99 extends a96 {
    public final sa6 a;

    public z99(sa6 sa6Var) {
        this.a = sa6Var;
    }

    @Override // defpackage.a96
    public final Object a() {
        return this.a;
    }

    @Override // defpackage.a96
    public final boolean b() {
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof z99) {
            return this.a.equals(((z99) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() + 1502476572;
    }

    public final String toString() {
        return eq3.k("Optional.of(", this.a.toString(), ")");
    }
}
