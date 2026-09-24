package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wf6 {
    public final long a;
    public final String b;
    public final boolean c;
    public final long d;
    public final long e;

    public wf6(long j, String str, boolean z, long j2, long j3) {
        this.a = j;
        this.b = str;
        this.c = z;
        this.d = j2;
        this.e = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || wf6.class != obj.getClass()) {
            return false;
        }
        wf6 wf6Var = (wf6) obj;
        if (this.a == wf6Var.a && this.c == wf6Var.c && this.d == wf6Var.d && this.e == wf6Var.e) {
            return this.b.equals(wf6Var.b);
        }
        return false;
    }

    public final int hashCode() {
        long j = this.a;
        int iG = (fz5.g(((int) (j ^ (j >>> 32))) * 31, 31, this.b) + (this.c ? 1 : 0)) * 31;
        long j2 = this.d;
        int i = (iG + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.e;
        return i + ((int) ((j3 >>> 32) ^ j3));
    }
}
