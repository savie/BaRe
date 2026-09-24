package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class z8 {
    public final int a;
    public final long b;
    public final int c;
    public final int d;
    public final int e;

    public z8(int i, long j, int i2, int i3, int i4) {
        this.a = i;
        this.b = j;
        this.c = i2;
        this.d = i3;
        this.e = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z8)) {
            return false;
        }
        z8 z8Var = (z8) obj;
        return this.a == z8Var.a && this.b == z8Var.b && this.c == z8Var.c && this.d == z8Var.d && this.e == z8Var.e;
    }

    public final int hashCode() {
        return Integer.hashCode(this.e) + xs1.f(0L, eq3.d(this.d, xs1.f(0L, eq3.d(this.c, xs1.f(this.b, Integer.hashCode(this.a) * 31, 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "ActiveTagBackupsInfo(totalApps=" + this.a + ", usedSpaceApps=" + this.b + ", totalMessages=" + this.c + ", usedSpaceMessages=0, totalCalls=" + this.d + ", usedSpaceCalls=0, totalFolders=" + this.e + ")";
    }
}
