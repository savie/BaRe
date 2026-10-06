package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ui1 {
    public final List a;
    public final Exception b;

    public ui1(Exception exc, List list) {
        this.a = list;
        this.b = exc;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ui1)) {
            return false;
        }
        ui1 ui1Var = (ui1) obj;
        return this.a.equals(ui1Var.a) && pe4.d(this.b, ui1Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Exception exc = this.b;
        return iHashCode + (exc == null ? 0 : exc.hashCode());
    }

    public final String toString() {
        return "CloudScanResult(cloudItems=" + this.a + ", error=" + this.b + ")";
    }
}
