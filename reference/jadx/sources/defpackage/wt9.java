package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wt9 {
    public final Class a;
    public final d2a b;

    public wt9(Class cls, d2a d2aVar) {
        this.a = cls;
        this.b = d2aVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof wt9)) {
            return false;
        }
        wt9 wt9Var = (wt9) obj;
        return wt9Var.a.equals(this.a) && wt9Var.b.equals(this.b);
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b);
    }

    public final String toString() {
        return dj7.k(this.a.getSimpleName(), ", object identifier: ", String.valueOf(this.b));
    }
}
