package defpackage;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ik5 implements Serializable {
    public final Class a;
    public final int b;
    public final String c;

    public ik5(Class cls, String str) {
        this.a = cls;
        this.b = cls.getName().hashCode() + (str == null ? 0 : str.hashCode());
        this.c = (str == null || str.isEmpty()) ? null : str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != ik5.class) {
            return false;
        }
        ik5 ik5Var = (ik5) obj;
        return this.a == ik5Var.a && Objects.equals(this.c, ik5Var.c);
    }

    public final int hashCode() {
        return this.b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[NamedType, class ");
        sb.append(this.a.getName());
        sb.append(", name: ");
        String str = this.c;
        return dj7.n(sb, str == null ? "null" : dj7.n(new StringBuilder("'"), str, "'"), "]");
    }
}
