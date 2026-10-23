package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class f56 {
    public final String a;
    public final ArrayList b;
    public final int c;
    public final ArrayList d;
    public final int e;

    public f56(int i, String str, ArrayList arrayList) {
        this.a = str;
        this.b = arrayList;
        this.c = i;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((g56) obj).c) {
                arrayList2.add(obj);
            }
        }
        List listP1 = el1.p1(arrayList2, this.c);
        ArrayList arrayList3 = new ArrayList(hl1.G0(listP1, 10));
        Iterator it = listP1.iterator();
        while (it.hasNext()) {
            arrayList3.add(Integer.valueOf(((g56) it.next()).b));
        }
        this.d = arrayList3;
        int size = this.b.size() - arrayList3.size();
        this.e = size < 0 ? 0 : size;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f56)) {
            return false;
        }
        f56 f56Var = (f56) obj;
        return this.a.equals(f56Var.a) && this.b.equals(f56Var.b) && this.c == f56Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PremiumCloudGroup(title=");
        sb.append(this.a);
        sb.append(", providerChips=");
        sb.append(this.b);
        sb.append(", maxVisibleIcons=");
        return xs1.m(sb, this.c, ")");
    }
}
