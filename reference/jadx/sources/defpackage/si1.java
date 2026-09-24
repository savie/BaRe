package defpackage;

import org.swiftapps.swiftbackup.cloud.model.CloudResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class si1 extends CloudResult {
    public final ni1 a;
    public final String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public si1(ni1 ni1Var, String str) {
        super(null);
        ni1Var.getClass();
        str.getClass();
        this.a = ni1Var;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof si1)) {
            return false;
        }
        si1 si1Var = (si1) obj;
        return pe4.d(this.a, si1Var.a) && pe4.d(this.b, si1Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Success(quota=" + this.a + ", emailAddress=" + this.b + ")";
    }
}
