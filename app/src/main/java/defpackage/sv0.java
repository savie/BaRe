package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sv0 {
    public final String a;
    public final String b;
    public final Long c;
    public final Long d;

    public sv0(String str, String str2, Long l, Long l2) {
        this.a = str;
        this.b = str2;
        this.c = l;
        this.d = l2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sv0)) {
            return false;
        }
        sv0 sv0Var = (sv0) obj;
        return this.a.equals(sv0Var.a) && pe4.d(this.b, sv0Var.b) && pe4.d(this.c, sv0Var.c) && pe4.d(this.d, sv0Var.d);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.c;
        int iHashCode3 = (iHashCode2 + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.d;
        return iHashCode3 + (l2 != null ? l2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("BoxUser(id=", this.a, ", login=", this.b, ", spaceAmount=");
        sbP.append(this.c);
        sbP.append(", spaceUsed=");
        sbP.append(this.d);
        sbP.append(")");
        return sbP.toString();
    }
}
