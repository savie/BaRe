package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ke0 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final int e;
    public final oe f;

    public ke0(String str, String str2, String str3, String str4, int i, oe oeVar) {
        if (str == null) {
            f6.n("Null appIdentifier");
            throw null;
        }
        this.a = str;
        if (str2 == null) {
            f6.n("Null versionCode");
            throw null;
        }
        this.b = str2;
        if (str3 == null) {
            f6.n("Null versionName");
            throw null;
        }
        this.c = str3;
        if (str4 == null) {
            f6.n("Null installUuid");
            throw null;
        }
        this.d = str4;
        this.e = i;
        this.f = oeVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ke0) {
            ke0 ke0Var = (ke0) obj;
            return this.a.equals(ke0Var.a) && this.b.equals(ke0Var.b) && this.c.equals(ke0Var.c) && this.d.equals(ke0Var.d) && this.e == ke0Var.e && this.f == ke0Var.f;
        }
        return false;
    }

    public final int hashCode() {
        return this.f.hashCode() ^ ((((((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.e) * 1000003);
    }

    public final String toString() {
        return "AppData{appIdentifier=" + this.a + ", versionCode=" + this.b + ", versionName=" + this.c + ", installUuid=" + this.d + ", deliveryMechanism=" + this.e + ", developmentPlatformProvider=" + this.f + "}";
    }
}
