package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ha6 {
    public final String a;
    public final int b;

    public ha6(String str, int i) {
        str.getClass();
        this.a = str;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ha6)) {
            return false;
        }
        ha6 ha6Var = (ha6) obj;
        return pe4.d(this.a, ha6Var.a) && this.b == ha6Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return u48.m("ProviderChip(title=", this.a, ", iconRes=", this.b, ")");
    }
}
