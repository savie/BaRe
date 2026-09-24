package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class om3 {
    public final String a;
    public final boolean b;
    public final String c;

    public om3(String str, String str2, boolean z) {
        str.getClass();
        this.a = str;
        this.b = z;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof om3)) {
            return false;
        }
        om3 om3Var = (om3) obj;
        return pe4.d(this.a, om3Var.a) && this.b == om3Var.b && pe4.d(this.c, om3Var.c);
    }

    public final int hashCode() {
        int iH = fz5.h(this.a.hashCode() * 31, 31, this.b);
        String str = this.c;
        return iH + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StringValidationResult(value=");
        sb.append(this.a);
        sb.append(", isValid=");
        sb.append(this.b);
        sb.append(", error=");
        return dj7.n(sb, this.c, ")");
    }
}
