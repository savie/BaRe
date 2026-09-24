package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class z0 {
    public final m2 a;

    public z0(m2 m2Var) {
        this.a = m2Var;
    }

    public String c() {
        if (getValue() != null) {
            return getValue().toString();
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        z0 z0Var = (z0) obj;
        if (this.a != z0Var.a) {
            return false;
        }
        if (getValue() != null) {
            return getValue().equals(z0Var.getValue());
        }
        return z0Var.getValue() == null;
    }

    public abstract Object getValue();

    public final int hashCode() {
        return this.a.b;
    }

    public String toString() {
        return getClass().getSimpleName() + "[" + c() + "]";
    }
}
