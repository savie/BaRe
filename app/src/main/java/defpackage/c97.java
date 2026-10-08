package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c97 {
    public final String a;
    public final String b;
    public final int c;
    public final long d;
    public final oa2 e;
    public final String f;
    public final String g;

    public c97(String str, String str2, int i, long j, oa2 oa2Var, String str3, String str4) {
        str.getClass();
        str2.getClass();
        str4.getClass();
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = j;
        this.e = oa2Var;
        this.f = str3;
        this.g = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c97)) {
            return false;
        }
        c97 c97Var = (c97) obj;
        return pe4.d(this.a, c97Var.a) && pe4.d(this.b, c97Var.b) && this.c == c97Var.c && this.d == c97Var.d && this.e.equals(c97Var.e) && this.f.equals(c97Var.f) && pe4.d(this.g, c97Var.g);
    }

    public final int hashCode() {
        return this.g.hashCode() + fz5.g((this.e.hashCode() + xs1.f(this.d, eq3.d(this.c, fz5.g(this.a.hashCode() * 31, 31, this.b), 31), 31)) * 31, 31, this.f);
    }

    public final String toString() {
        return "SessionInfo(sessionId=" + this.a + ", firstSessionId=" + this.b + ", sessionIndex=" + this.c + ", eventTimestampUs=" + this.d + ", dataCollectionStatus=" + this.e + ", firebaseInstallationId=" + this.f + ", firebaseAuthenticationToken=" + this.g + ')';
    }
}
