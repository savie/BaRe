package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class s01 {
    public final boolean a;
    public final ArrayList b;

    public s01(ArrayList arrayList, boolean z) {
        this.a = z;
        this.b = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s01)) {
            return false;
        }
        s01 s01Var = (s01) obj;
        return this.a == s01Var.a && this.b.equals(s01Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Boolean.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "ListState(isLoading=" + this.a + ", items=" + this.b + ")";
    }
}
