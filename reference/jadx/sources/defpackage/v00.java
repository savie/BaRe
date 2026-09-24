package defpackage;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v00 {
    public final int a;
    public final String b;
    public final List c;
    public final boolean d;
    public final boolean e;
    public final boolean f;

    public v00(int i, String str, List list) {
        boolean z;
        boolean z2;
        this.a = i;
        this.b = str;
        this.c = list;
        boolean z3 = true;
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (((r00) it.next()).b.equals(this.b)) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
            break;
        }
        this.d = z;
        List list2 = this.c;
        if (!list2.isEmpty()) {
            Iterator it2 = list2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z2 = false;
                    break;
                } else if (((r00) it2.next()).b.equals("android")) {
                    z2 = true;
                    break;
                }
            }
        } else {
            z2 = false;
            break;
        }
        this.e = z2;
        List list3 = this.c;
        if (list3.isEmpty()) {
            z3 = false;
        } else {
            Iterator it3 = list3.iterator();
            while (it3.hasNext()) {
                if (((r00) it3.next()).b.equals("com.android.cts.ctsshim")) {
                }
            }
            z3 = false;
        }
        this.f = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v00)) {
            return false;
        }
        v00 v00Var = (v00) obj;
        return this.a == v00Var.a && this.b.equals(v00Var.b) && this.c.equals(v00Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + fz5.g(Integer.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AppVisibilitySnapshot(rawPackageCount=");
        sb.append(this.a);
        sb.append(", ownPackageName=");
        sb.append(this.b);
        sb.append(", packages=");
        return dj7.o(sb, this.c, ")");
    }
}
