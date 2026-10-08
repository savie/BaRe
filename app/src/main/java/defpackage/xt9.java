package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xt9 {
    public final Class a;
    public final Class b;

    public xt9(Class cls, Class cls2) {
        this.a = cls;
        this.b = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof xt9)) {
            return false;
        }
        xt9 xt9Var = (xt9) obj;
        return xt9Var.a.equals(this.a) && xt9Var.b.equals(this.b);
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b);
    }

    public final String toString() {
        return dj7.k(this.a.getSimpleName(), " with serialization type: ", this.b.getSimpleName());
    }
}
