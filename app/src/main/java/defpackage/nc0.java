package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nc0 extends sz1 {
    public final oc0 a;
    public final List b;
    public final List c;
    public final Boolean d;
    public final rz1 e;
    public final List f;
    public final int g;

    public nc0(oc0 oc0Var, List list, List list2, Boolean bool, rz1 rz1Var, List list3, int i) {
        this.a = oc0Var;
        this.b = list;
        this.c = list2;
        this.d = bool;
        this.e = rz1Var;
        this.f = list3;
        this.g = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof sz1)) {
            return false;
        }
        nc0 nc0Var = (nc0) ((sz1) obj);
        if (!this.a.equals(nc0Var.a)) {
            return false;
        }
        List list = nc0Var.b;
        List list2 = this.b;
        if (list2 == null) {
            if (list != null) {
                return false;
            }
        } else if (!list2.equals(list)) {
            return false;
        }
        List list3 = nc0Var.c;
        List list4 = this.c;
        if (list4 == null) {
            if (list3 != null) {
                return false;
            }
        } else if (!list4.equals(list3)) {
            return false;
        }
        Boolean bool = nc0Var.d;
        Boolean bool2 = this.d;
        if (bool2 == null) {
            if (bool != null) {
                return false;
            }
        } else if (!bool2.equals(bool)) {
            return false;
        }
        rz1 rz1Var = nc0Var.e;
        rz1 rz1Var2 = this.e;
        if (rz1Var2 == null) {
            if (rz1Var != null) {
                return false;
            }
        } else if (!rz1Var2.equals(rz1Var)) {
            return false;
        }
        List list5 = nc0Var.f;
        List list6 = this.f;
        if (list6 == null) {
            if (list5 != null) {
                return false;
            }
        } else if (!list6.equals(list5)) {
            return false;
        }
        return this.g == nc0Var.g;
    }

    public final int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        List list = this.b;
        int iHashCode2 = (iHashCode ^ (list == null ? 0 : list.hashCode())) * 1000003;
        List list2 = this.c;
        int iHashCode3 = (iHashCode2 ^ (list2 == null ? 0 : list2.hashCode())) * 1000003;
        Boolean bool = this.d;
        int iHashCode4 = (iHashCode3 ^ (bool == null ? 0 : bool.hashCode())) * 1000003;
        rz1 rz1Var = this.e;
        int iHashCode5 = (iHashCode4 ^ (rz1Var == null ? 0 : rz1Var.hashCode())) * 1000003;
        List list3 = this.f;
        return this.g ^ ((iHashCode5 ^ (list3 != null ? list3.hashCode() : 0)) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Application{execution=");
        sb.append(this.a);
        sb.append(", customAttributes=");
        sb.append(this.b);
        sb.append(", internalKeys=");
        sb.append(this.c);
        sb.append(", background=");
        sb.append(this.d);
        sb.append(", currentProcessDetails=");
        sb.append(this.e);
        sb.append(", appProcessDetails=");
        sb.append(this.f);
        sb.append(", uiOrientation=");
        return xs1.m(sb, this.g, "}");
    }
}
