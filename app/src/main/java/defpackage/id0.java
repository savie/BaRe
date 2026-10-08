package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class id0 {
    public final Object a;
    public final d66 b;

    public id0(Object obj, d66 d66Var) {
        this.a = obj;
        this.b = d66Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof id0)) {
            return false;
        }
        id0 id0Var = (id0) obj;
        return this.a.equals(id0Var.a) && this.b.equals(id0Var.b);
    }

    public final int hashCode() {
        return (this.b.hashCode() ^ (((1000003 * 1000003) ^ this.a.hashCode()) * 1000003)) * (-721379959);
    }

    public final String toString() {
        return "Event{code=null, payload=" + this.a + ", priority=" + this.b + ", productData=null, eventContext=null}";
    }
}
