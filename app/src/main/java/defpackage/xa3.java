package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xa3 {
    public final String a;
    public final String b;

    public xa3(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean a() {
        String str;
        String str2 = this.a;
        return str2 != null && str2.length() > 16 && (str = this.b) != null && str.length() > 16;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xa3)) {
            return false;
        }
        xa3 xa3Var = (xa3) obj;
        return pe4.d(this.a, xa3Var.a) && pe4.d(this.b, xa3Var.b);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return eq3.l("KeyPairInfo(encryptedPrivateKey=", this.a, ", publicKeyDerBase64=", this.b, ")");
    }
}
