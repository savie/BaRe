package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oc8 {
    public final int a;
    public final Class b;
    public final gc8 c;
    public final boolean d;

    public oc8(Class cls, boolean z) {
        this.b = cls;
        this.c = null;
        this.d = z;
        this.a = z ? cls.getName().hashCode() + 1 : cls.getName().hashCode();
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj.getClass() != oc8.class) {
            return false;
        }
        oc8 oc8Var = (oc8) obj;
        if (oc8Var.d != this.d) {
            return false;
        }
        Class cls = this.b;
        if (cls != null) {
            return oc8Var.b == cls;
        }
        return this.c.equals(oc8Var.c);
    }

    public final int hashCode() {
        return this.a;
    }

    public final String toString() {
        boolean z = this.d;
        Class cls = this.b;
        if (cls != null) {
            return "{class: " + cls.getName() + ", typed? " + z + "}";
        }
        return "{type: " + this.c + ", typed? " + z + "}";
    }

    public oc8(gc8 gc8Var) {
        this.c = gc8Var;
        this.b = null;
        this.d = false;
        this.a = gc8Var.hashCode() - 1;
    }
}
