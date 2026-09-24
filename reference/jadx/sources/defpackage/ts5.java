package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ts5 {
    public final ss5 a;
    public final fu4 b;

    public ts5(fu4 fu4Var, ss5 ss5Var) {
        ss5Var.getClass();
        this.a = ss5Var;
        this.b = fu4Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ts5)) {
            return false;
        }
        ts5 ts5Var = (ts5) obj;
        return pe4.d(this.a, ts5Var.a) && pe4.d(this.b, ts5Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        fu4 fu4Var = this.b;
        return iHashCode + (fu4Var == null ? 0 : fu4Var.hashCode());
    }

    public final String toString() {
        return "OnBackPressedCallbackInfo(callback=" + this.a + ", owner=" + this.b + ')';
    }
}
