package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mt9 {
    public final Class a;
    public final Class b;

    public mt9(Class cls, Class cls2) {
        this.a = cls;
        this.b = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof mt9)) {
            return false;
        }
        mt9 mt9Var = (mt9) obj;
        return mt9Var.a.equals(this.a) && mt9Var.b.equals(this.b);
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b);
    }

    public final String toString() {
        return dj7.k(this.a.getSimpleName(), " with primitive type: ", this.b.getSimpleName());
    }
}
