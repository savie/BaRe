package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class es8 {
    public final String a;
    public final mt8 b;

    public es8(String str, mt8 mt8Var) {
        mt8Var.getClass();
        this.a = str;
        this.b = mt8Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof es8)) {
            return false;
        }
        es8 es8Var = (es8) obj;
        return this.a.equals(es8Var.a) && this.b == es8Var.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "WifiConfigIdentity(normalizedSsid=" + this.a + ", securityType=" + this.b + ")";
    }
}
