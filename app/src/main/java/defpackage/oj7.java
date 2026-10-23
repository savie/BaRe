package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oj7 {
    public final String a;
    public final boolean b;

    public oj7(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oj7)) {
            return false;
        }
        oj7 oj7Var = (oj7) obj;
        return this.a.equals(oj7Var.a) && this.b == oj7Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Result(message=" + this.a + ", isCriticallyLowSpace=" + this.b + ")";
    }
}
