package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fm4 implements Serializable {
    public static final fm4 c;
    public final sp5 a;
    public final sp5 b;

    static {
        sp5 sp5Var = sp5.a;
        c = new fm4(sp5Var, sp5Var);
    }

    public fm4(sp5 sp5Var, sp5 sp5Var2) {
        this.a = sp5Var;
        this.b = sp5Var2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != fm4.class) {
            return false;
        }
        fm4 fm4Var = (fm4) obj;
        return fm4Var.a == this.a && fm4Var.b == this.b;
    }

    public final int hashCode() {
        return this.a.ordinal() + (this.b.ordinal() << 2);
    }

    public final String toString() {
        return "JsonSetter.Value(valueNulls=" + this.a + ",contentNulls=" + this.b + ")";
    }
}
