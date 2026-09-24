package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ub0 extends w91 {
    public final qb0 a;

    public ub0(qb0 qb0Var) {
        this.a = qb0Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof w91)) {
            return false;
        }
        w91 w91Var = (w91) obj;
        Object obj2 = v91.a;
        if (obj2.equals(obj2)) {
            return this.a.equals(((ub0) w91Var).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() ^ ((v91.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "ClientInfo{clientType=" + v91.a + ", androidClientInfo=" + this.a + "}";
    }
}
