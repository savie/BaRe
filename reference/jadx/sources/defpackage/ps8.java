package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ps8 extends od2 {
    public final gs8 i;

    public ps8(gs8 gs8Var) {
        this.i = gs8Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ps8) && this.i.equals(((ps8) obj).i);
    }

    public final int hashCode() {
        return this.i.hashCode();
    }

    public final String toString() {
        return "DeviceReadFailure(failure=" + this.i + ")";
    }
}
