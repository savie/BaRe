package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fm7 {
    public final List a;
    public Set b;
    public final boolean c;
    public final boolean d;
    public final String e;

    public /* synthetic */ fm7(List list, Set set, boolean z, String str, int i) {
        this((i & 1) != 0 ? ov2.a : list, (i & 2) != 0 ? sv2.a : set, false, (i & 8) != 0 ? false : z, (i & 16) != 0 ? null : str);
    }

    public static fm7 a(fm7 fm7Var, List list, Set set, boolean z, int i) {
        if ((i & 1) != 0) {
            list = fm7Var.a;
        }
        List list2 = list;
        if ((i & 2) != 0) {
            set = fm7Var.b;
        }
        Set set2 = set;
        if ((i & 4) != 0) {
            z = fm7Var.c;
        }
        boolean z2 = z;
        boolean z3 = (i & 8) != 0 ? fm7Var.d : false;
        String str = fm7Var.e;
        fm7Var.getClass();
        list2.getClass();
        set2.getClass();
        return new fm7(list2, set2, z2, z3, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [ov2] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.ArrayList] */
    public final fm7 b() {
        ?? arrayList;
        List list = this.a;
        if (list.isEmpty()) {
            arrayList = ov2.a;
        } else {
            arrayList = new ArrayList(hl1.G0(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                jl0 copy = ((jl0) it.next()).getCopy();
                copy.getClass();
                arrayList.add(copy);
            }
        }
        return a(this, arrayList, null, false, 30);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fm7)) {
            return false;
        }
        fm7 fm7Var = (fm7) obj;
        return pe4.d(this.a, fm7Var.a) && pe4.d(this.b, fm7Var.b) && this.c == fm7Var.c && this.d == fm7Var.d && pe4.d(this.e, fm7Var.e);
    }

    public final int hashCode() {
        int iH = fz5.h(fz5.h((this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31, this.c), 31, this.d);
        String str = this.e;
        return iH + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sbN = xs1.n("State(items=", this.a.size(), ", checkedItemIds=", ", isEditMode=", this.b.size());
        sbN.append(this.c);
        sbN.append(", scrollListToTop=");
        sbN.append(this.d);
        sbN.append(")");
        return sbN.toString();
    }

    public fm7(List list, Set set, boolean z, boolean z2, String str) {
        list.getClass();
        set.getClass();
        this.a = list;
        this.b = set;
        this.c = z;
        this.d = z2;
        this.e = str;
    }
}
