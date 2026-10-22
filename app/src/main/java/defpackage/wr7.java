package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wr7 {
    public final Object a;
    public final tr7 b;
    public volatile boolean c = true;

    public wr7(Object obj, tr7 tr7Var) {
        this.a = obj;
        this.b = tr7Var;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof wr7) {
            wr7 wr7Var = (wr7) obj;
            if (this.a == wr7Var.a && this.b.equals(wr7Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.f.hashCode() + this.a.hashCode();
    }
}
