package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ii1 extends pe4 {
    public final ArrayList m;
    public final int n;
    public final int o;
    public final qf1 p;

    public ii1(ArrayList arrayList, int i, int i2, qf1 qf1Var) {
        qf1Var.getClass();
        this.m = arrayList;
        this.n = i;
        this.o = i2;
        this.p = qf1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ii1)) {
            return false;
        }
        ii1 ii1Var = (ii1) obj;
        return this.m.equals(ii1Var.m) && this.n == ii1Var.n && this.o == ii1Var.o && this.p == ii1Var.p;
    }

    public final int hashCode() {
        return this.p.hashCode() + eq3.d(this.o, eq3.d(this.n, this.m.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        return "Success(orphans=" + this.m + ", scannedFileCount=" + this.n + ", firebaseReferenceCount=" + this.o + ", idMode=" + this.p + ")";
    }
}
