package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class tz3 {
    public final a04 a;
    public final String b;

    public tz3(a04 a04Var, String str) {
        this.a = a04Var;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tz3)) {
            return false;
        }
        tz3 tz3Var = (tz3) obj;
        return pe4.d(this.a, tz3Var.a) && pe4.d(this.b, tz3Var.b);
    }

    public final int hashCode() {
        a04 a04Var = this.a;
        int iHashCode = (a04Var == null ? 0 : a04Var.hashCode()) * 31;
        String str = this.b;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "GoogleDriveAbout(quota=" + this.a + ", emailAddress=" + this.b + ")";
    }
}
