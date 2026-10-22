package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bi1 extends jd4 {
    public final Exception i;
    public final ArrayList j;

    public bi1(Exception exc, ArrayList arrayList) {
        exc.getClass();
        this.i = exc;
        this.j = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bi1)) {
            return false;
        }
        bi1 bi1Var = (bi1) obj;
        return pe4.d(this.i, bi1Var.i) && this.j.equals(bi1Var.j);
    }

    public final int hashCode() {
        return this.j.hashCode() + (this.i.hashCode() * 31);
    }

    public final String toString() {
        return "Error(error=" + this.i + ", protectedFiles=" + this.j + ")";
    }
}
