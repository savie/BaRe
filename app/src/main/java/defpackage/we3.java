package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class we3 extends l73 {
    public static final we3 o = new we3(wc2.a(new RuntimeException("Anonymous user not allowed to read Firebase database!")));
    public final wc2 n;

    public we3(wc2 wc2Var) {
        this.n = wc2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof we3) && this.n == ((we3) obj).n;
    }

    public final int hashCode() {
        return this.n.hashCode();
    }

    public final String toString() {
        return "Error(error=" + this.n + ")";
    }
}
