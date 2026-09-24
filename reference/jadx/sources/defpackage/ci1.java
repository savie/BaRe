package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ci1 extends jd4 {
    public final List i;
    public final List j;

    public ci1(List list, List list2) {
        this.i = list;
        this.j = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ci1)) {
            return false;
        }
        ci1 ci1Var = (ci1) obj;
        return this.i.equals(ci1Var.i) && this.j.equals(ci1Var.j);
    }

    public final int hashCode() {
        return this.j.hashCode() + (this.i.hashCode() * 31);
    }

    public final String toString() {
        return "Success(deletedFiles=" + this.i + ", protectedFiles=" + this.j + ")";
    }
}
