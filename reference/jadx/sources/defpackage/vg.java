package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vg {
    public final ug a;
    public final long b;
    public final long c;

    public vg(ug ugVar, long j, long j2) {
        ugVar.getClass();
        this.a = ugVar;
        this.b = j;
        this.c = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vg)) {
            return false;
        }
        vg vgVar = (vg) obj;
        return this.a == vgVar.a && this.b == vgVar.b && this.c == vgVar.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + xs1.f(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "ApkInstallProgress(stage=" + this.a + ", completedBytes=" + this.b + ", totalBytes=" + this.c + ")";
    }
}
