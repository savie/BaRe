package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oc0 extends qz1 {
    public final List a;
    public final mz1 b;
    public final ez1 c;
    public final rc0 d;
    public final List e;

    public oc0(List list, qc0 qc0Var, ez1 ez1Var, rc0 rc0Var, List list2) {
        this.a = list;
        this.b = qc0Var;
        this.c = ez1Var;
        this.d = rc0Var;
        this.e = list2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof qz1)) {
            return false;
        }
        qz1 qz1Var = (qz1) obj;
        List list = this.a;
        if (list == null) {
            if (((oc0) qz1Var).a != null) {
                return false;
            }
        } else if (!list.equals(((oc0) qz1Var).a)) {
            return false;
        }
        mz1 mz1Var = this.b;
        if (mz1Var == null) {
            if (((oc0) qz1Var).b != null) {
                return false;
            }
        } else if (!mz1Var.equals(((oc0) qz1Var).b)) {
            return false;
        }
        ez1 ez1Var = this.c;
        if (ez1Var == null) {
            if (((oc0) qz1Var).c != null) {
                return false;
            }
        } else if (!ez1Var.equals(((oc0) qz1Var).c)) {
            return false;
        }
        oc0 oc0Var = (oc0) qz1Var;
        return this.d.equals(oc0Var.d) && this.e.equals(oc0Var.e);
    }

    public final int hashCode() {
        List list = this.a;
        int iHashCode = ((list == null ? 0 : list.hashCode()) ^ 1000003) * 1000003;
        mz1 mz1Var = this.b;
        int iHashCode2 = (iHashCode ^ (mz1Var == null ? 0 : mz1Var.hashCode())) * 1000003;
        ez1 ez1Var = this.c;
        return this.e.hashCode() ^ (((((ez1Var != null ? ez1Var.hashCode() : 0) ^ iHashCode2) * 1000003) ^ this.d.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Execution{threads=");
        sb.append(this.a);
        sb.append(", exception=");
        sb.append(this.b);
        sb.append(", appExitInfo=");
        sb.append(this.c);
        sb.append(", signal=");
        sb.append(this.d);
        sb.append(", binaries=");
        return dj7.o(sb, this.e, "}");
    }
}
