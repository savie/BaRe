package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ya1 extends jm1 {
    public final ArrayList g;
    public final qf1 h;

    public ya1(ArrayList arrayList, qf1 qf1Var) {
        qf1Var.getClass();
        this.g = arrayList;
        this.h = qf1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ya1)) {
            return false;
        }
        ya1 ya1Var = (ya1) obj;
        return this.g.equals(ya1Var.g) && this.h == ya1Var.h;
    }

    public final int hashCode() {
        return this.h.hashCode() + (this.g.hashCode() * 31);
    }

    public final String toString() {
        return "Success(files=" + this.g + ", idMode=" + this.h + ")";
    }
}
