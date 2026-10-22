package defpackage;

import java.io.Serializable;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mk4 implements Serializable {
    public static final mk4 f = new mk4(Collections.EMPTY_SET, false, false, false, true);
    public final Set a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final boolean e;

    public mk4(Set set, boolean z, boolean z2, boolean z3, boolean z4) {
        if (set == null) {
            this.a = Collections.EMPTY_SET;
        } else {
            this.a = set;
        }
        this.b = z;
        this.c = z2;
        this.d = z3;
        this.e = z4;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == mk4.class) {
            mk4 mk4Var = (mk4) obj;
            if (this.b == mk4Var.b && this.e == mk4Var.e && this.c == mk4Var.c && this.d == mk4Var.d && this.a.equals(mk4Var.a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a.size() + (this.b ? 1 : -3) + (this.c ? 3 : -7) + (this.d ? 7 : -11) + (this.e ? 11 : -13);
    }

    public final String toString() {
        return String.format("JsonIgnoreProperties.Value(ignored=%s,ignoreUnknown=%s,allowGetters=%s,allowSetters=%s,merge=%s)", this.a, Boolean.valueOf(this.b), Boolean.valueOf(this.c), Boolean.valueOf(this.d), Boolean.valueOf(this.e));
    }
}
