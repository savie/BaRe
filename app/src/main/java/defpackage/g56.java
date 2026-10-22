package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class g56 {
    public final String a;
    public final int b;
    public final boolean c;

    public g56(String str, int i, boolean z) {
        str.getClass();
        this.a = str;
        this.b = i;
        this.c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g56)) {
            return false;
        }
        g56 g56Var = (g56) obj;
        return pe4.d(this.a, g56Var.a) && this.b == g56Var.b && this.c == g56Var.c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + eq3.d(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return dj7.p(dj7.v("PremiumCloudProviderChip(title=", this.a, ", iconRes=", this.b, ", showInPreview="), this.c, ")");
    }
}
