package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mf1 extends w13 {
    public final boolean g;
    public final Object h;

    public mf1(Object obj, boolean z) {
        this.g = z;
        this.h = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mf1)) {
            return false;
        }
        mf1 mf1Var = (mf1) obj;
        return this.g == mf1Var.g && pe4.d(this.h, mf1Var.h);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.g) * 31;
        Object obj = this.h;
        return iHashCode + (obj == null ? 0 : obj.hashCode());
    }

    public final String toString() {
        return "Success(exists=" + this.g + ", value=" + this.h + ")";
    }
}
