package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ye3 extends af3 {
    public static final ye3 c = new ye3(wc2.a(new RuntimeException("Anonymous user not allowed to write to Firebase database!")));
    public final wc2 b;

    public ye3(wc2 wc2Var) {
        super(false);
        this.b = wc2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ye3) && this.b == ((ye3) obj).b;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "Error(error=" + this.b + ")";
    }
}
