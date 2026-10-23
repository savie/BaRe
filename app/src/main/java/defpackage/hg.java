package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hg extends ig {
    public final bg a;
    public final String b;

    public hg(bg bgVar, String str) {
        this.a = bgVar;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hg)) {
            return false;
        }
        hg hgVar = (hg) obj;
        return pe4.d(this.a, hgVar.a) && pe4.d(this.b, hgVar.b);
    }

    public final int hashCode() {
        bg bgVar = this.a;
        int iHashCode = (bgVar == null ? 0 : bgVar.hashCode()) * 31;
        String str = this.b;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "Success(packageInfo=" + this.a + ", packageName=" + this.b + ")";
    }
}
