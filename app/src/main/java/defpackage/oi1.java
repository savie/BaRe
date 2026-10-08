package defpackage;

import org.swiftapps.swiftbackup.cloud.model.CloudResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class oi1 extends CloudResult {
    public final Exception a;
    public final boolean b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oi1(Exception exc, boolean z) {
        super(null);
        exc.getClass();
        this.a = exc;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oi1)) {
            return false;
        }
        oi1 oi1Var = (oi1) obj;
        return pe4.d(this.a, oi1Var.a) && this.b == oi1Var.b;
    }

    @Override // org.swiftapps.swiftbackup.cloud.model.CloudResult
    public final String getErrorMessage() {
        return io4.b(this.a);
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Error(exception=" + this.a + ", isGoogleUserRecoverableException=" + this.b + ")";
    }
}
