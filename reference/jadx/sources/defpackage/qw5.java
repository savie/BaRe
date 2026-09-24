package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qw5 {
    public final Object a;
    public final Object b;

    public qw5(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || qw5.class != obj.getClass()) {
            return false;
        }
        qw5 qw5Var = (qw5) obj;
        Object obj2 = qw5Var.a;
        Object obj3 = this.a;
        if (obj3 == null ? obj2 != null : !obj3.equals(obj2)) {
            return false;
        }
        Object obj4 = qw5Var.b;
        Object obj5 = this.b;
        return obj5 == null ? obj4 == null : obj5.equals(obj4);
    }

    public final int hashCode() {
        Object obj = this.a;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * 31;
        Object obj2 = this.b;
        return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "Pair(" + this.a + "," + this.b + ")";
    }
}
