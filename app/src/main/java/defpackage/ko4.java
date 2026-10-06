package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ko4 {
    public final int a;
    public final String b;

    public ko4(int i, String str) {
        this.b = str;
        this.a = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ko4)) {
            return false;
        }
        ko4 ko4Var = (ko4) obj;
        if (this.a == ko4Var.a) {
            return ko4Var.b.equals(this.b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return this.b;
    }
}
