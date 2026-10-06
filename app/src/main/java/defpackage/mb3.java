package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mb3 implements ob3 {
    public final String a;
    public final String b;
    public final String c;
    public final long d;

    public mb3(String str, String str2, String str3, long j) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = j;
    }

    @Override // defpackage.ob3
    public final String a() {
        return this.a;
    }

    @Override // defpackage.ob3
    public final String b() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mb3)) {
            return false;
        }
        mb3 mb3Var = (mb3) obj;
        return pe4.d(this.a, mb3Var.a) && pe4.d(this.b, mb3Var.b) && pe4.d(this.c, mb3Var.c) && this.d == mb3Var.d;
    }

    @Override // defpackage.ob3
    public final String getName() {
        return this.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.d) + fz5.g(fz5.g(this.a.hashCode() * 31, 31, this.b), 31, this.c);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("FilenRemoteDirectory(uuid=", this.a, ", name=", this.b, ", parentUuid=");
        sbP.append(this.c);
        sbP.append(", created=");
        sbP.append(this.d);
        sbP.append(")");
        return sbP.toString();
    }
}
