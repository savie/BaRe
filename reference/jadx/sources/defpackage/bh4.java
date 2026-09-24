package defpackage;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bh4 implements Serializable {
    public static final bh4 d = new bh4(null, null, null);
    public final Object a;
    public final Boolean b;
    public final Boolean c;

    public bh4(Object obj, Boolean bool, Boolean bool2) {
        this.a = obj;
        this.b = bool;
        this.c = bool2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == bh4.class) {
            bh4 bh4Var = (bh4) obj;
            if (Objects.equals(this.a, bh4Var.a) && Objects.equals(this.b, bh4Var.b) && Objects.equals(this.c, bh4Var.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.a;
        int iHashCode = obj != null ? 1 + obj.hashCode() : 1;
        Boolean bool = this.b;
        if (bool != null) {
            iHashCode += bool.hashCode();
        }
        Boolean bool2 = this.c;
        return bool2 != null ? bool2.hashCode() + iHashCode : iHashCode;
    }

    public final String toString() {
        return String.format("JacksonInject.Value(id=%s,useInput=%s,optional=%s)", this.a, this.b, this.c);
    }
}
