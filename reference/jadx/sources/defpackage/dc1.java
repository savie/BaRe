package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class dc1 {
    public final String a;
    public final int b;
    public final boolean c;

    public dc1(String str, int i, boolean z) {
        str.getClass();
        this.a = str;
        this.b = i;
        this.c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dc1)) {
            return false;
        }
        dc1 dc1Var = (dc1) obj;
        return pe4.d(this.a, dc1Var.a) && this.b == dc1Var.b && this.c == dc1Var.c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + eq3.d(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return dj7.p(dj7.v("CloudConnectProviderChip(title=", this.a, ", iconRes=", this.b, ", showIconWhenCollapsed="), this.c, ")");
    }
}
