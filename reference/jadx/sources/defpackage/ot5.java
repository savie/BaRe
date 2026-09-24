package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ot5 {
    public final qt5 a;

    public ot5(qt5 qt5Var) {
        this.a = qt5Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ot5) && pe4.d(this.a, ((ot5) obj).a);
    }

    public final int hashCode() {
        qt5 qt5Var = this.a;
        if (qt5Var == null) {
            return 0;
        }
        return qt5Var.hashCode();
    }

    public final String toString() {
        return "OneDriveDrive(quota=" + this.a + ")";
    }
}
