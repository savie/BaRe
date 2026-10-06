package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pw7 {
    public final String a;
    public final boolean b;
    public final List c;
    public final List d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.ArrayList] */
    public pw7(String str, boolean z, List list, List list2) {
        str.getClass();
        this.a = str;
        this.b = z;
        this.c = list;
        this.d = list2;
        if (list2.isEmpty()) {
            int size = list.size();
            list2 = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                list2.add("ASC");
            }
        }
        this.d = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof pw7) {
            pw7 pw7Var = (pw7) obj;
            String str = pw7Var.a;
            if (this.b == pw7Var.b && this.c.equals(pw7Var.c) && pe4.d(this.d, pw7Var.d)) {
                String str2 = this.a;
                return uq7.V(str2, "index_", false) ? uq7.V(str, "index_", false) : str2.equals(str);
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.a;
        return this.d.hashCode() + fz5.i(this.c, (((uq7.V(str, "index_", false) ? -1184239155 : str.hashCode()) * 31) + (this.b ? 1 : 0)) * 31, 31);
    }

    public final String toString() {
        return oq7.K(oq7.M("\n            |Index {\n            |   name = '" + this.a + "',\n            |   unique = '" + this.b + "',\n            |   columns = {" + oq7.K(el1.Y0(this.c, ",", null, null, null, 62)).concat(oq7.K("},")) + "\n            |   orders = {" + oq7.K(el1.Y0(this.d, ",", null, null, null, 62)).concat(oq7.K(" }")) + "\n            |}\n        "));
    }
}
