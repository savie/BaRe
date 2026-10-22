package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mn6 {
    public final ArrayList a;
    public final ArrayList b;

    public mn6(ArrayList arrayList, ArrayList arrayList2) {
        this.a = arrayList;
        this.b = arrayList2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mn6)) {
            return false;
        }
        mn6 mn6Var = (mn6) obj;
        return this.a.equals(mn6Var.a) && this.b.equals(mn6Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "RevalidationResult(deletableFiles=" + this.a + ", protectedFiles=" + this.b + ")";
    }
}
