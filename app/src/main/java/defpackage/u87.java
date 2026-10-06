package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u87 {
    public static final t87 Companion = new t87();
    public final String a;
    public final String b;
    public final int c;
    public final long d;

    public /* synthetic */ u87(int i, int i2, long j, String str, String str2) {
        if (15 != (i & 15)) {
            nc8.p0(i, 15, s87.a.d());
            throw null;
        }
        this.a = str;
        this.b = str2;
        this.c = i2;
        this.d = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u87)) {
            return false;
        }
        u87 u87Var = (u87) obj;
        return pe4.d(this.a, u87Var.a) && pe4.d(this.b, u87Var.b) && this.c == u87Var.c && this.d == u87Var.d;
    }

    public final int hashCode() {
        return Long.hashCode(this.d) + eq3.d(this.c, fz5.g(this.a.hashCode() * 31, 31, this.b), 31);
    }

    public final String toString() {
        return "SessionDetails(sessionId=" + this.a + ", firstSessionId=" + this.b + ", sessionIndex=" + this.c + ", sessionStartTimestampUs=" + this.d + ')';
    }

    public u87(int i, String str, String str2, long j) {
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = j;
    }
}
