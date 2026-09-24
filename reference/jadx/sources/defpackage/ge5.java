package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ge5 {
    public final ArrayList a;
    public final boolean b;

    public ge5(ArrayList arrayList, boolean z) {
        this.a = arrayList;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ge5)) {
            return false;
        }
        ge5 ge5Var = (ge5) obj;
        return this.a.equals(ge5Var.a) && this.b == ge5Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return ge5.class.getSimpleName() + " has items size " + this.a.size() + " & isCloudItems = " + this.b;
    }
}
