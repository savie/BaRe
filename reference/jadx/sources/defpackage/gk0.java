package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gk0 {
    public final hk0 a;
    public final Long b;
    public final Long c;
    public final boolean d;
    public final String e;
    public final String f;
    public final Long g;
    public final Long h;
    public final Long i;

    public gk0(hk0 hk0Var, Long l, Long l2, boolean z, String str, String str2, Long l3, Long l4, Long l5) {
        hk0Var.getClass();
        this.a = hk0Var;
        this.b = l;
        this.c = l2;
        this.d = z;
        this.e = str;
        this.f = str2;
        this.g = l3;
        this.h = l4;
        this.i = l5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gk0)) {
            return false;
        }
        gk0 gk0Var = (gk0) obj;
        return this.a == gk0Var.a && pe4.d(this.b, gk0Var.b) && pe4.d(this.c, gk0Var.c) && this.d == gk0Var.d && pe4.d(this.e, gk0Var.e) && pe4.d(this.f, gk0Var.f) && pe4.d(this.g, gk0Var.g) && pe4.d(this.h, gk0Var.h) && pe4.d(this.i, gk0Var.i);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Long l = this.b;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.c;
        int iH = fz5.h((iHashCode2 + (l2 == null ? 0 : l2.hashCode())) * 31, 31, this.d);
        String str = this.e;
        int iHashCode3 = (iH + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l3 = this.g;
        int iHashCode5 = (iHashCode4 + (l3 == null ? 0 : l3.hashCode())) * 31;
        Long l4 = this.h;
        int iHashCode6 = (iHashCode5 + (l4 == null ? 0 : l4.hashCode())) * 31;
        Long l5 = this.i;
        return iHashCode6 + (l5 != null ? l5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BackupDetailsPart(key=");
        sb.append(this.a);
        sb.append(", backupSizeBytes=");
        sb.append(this.b);
        sb.append(", originalSizeBytes=");
        sb.append(this.c);
        sb.append(", encrypted=");
        sb.append(this.d);
        sb.append(", encryptionLabel=");
        xs1.t(sb, this.e, ", versionName=", this.f, ", versionCode=");
        fz5.q(sb, this.g, ", regularFileCount=", this.h, ", directoryCount=");
        sb.append(this.i);
        sb.append(")");
        return sb.toString();
    }
}
