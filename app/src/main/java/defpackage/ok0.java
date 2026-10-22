package defpackage;

import org.swiftapps.swiftbackup.model.app.LocalMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ok0 extends tu0 {
    public final hk n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final LocalMetadata t;
    public final boolean u;

    public ok0(hk hkVar, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, LocalMetadata localMetadata, boolean z6) {
        localMetadata.getClass();
        this.n = hkVar;
        this.o = z;
        this.p = z2;
        this.q = z3;
        this.r = z4;
        this.s = z5;
        this.t = localMetadata;
        this.u = z6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ok0) {
            ok0 ok0Var = (ok0) obj;
            if (this.n == ok0Var.n && this.o == ok0Var.o && this.p == ok0Var.p && this.q == ok0Var.q && this.r == ok0Var.r && this.s == ok0Var.s && pe4.d(this.t, ok0Var.t) && this.u == ok0Var.u) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.u) + ((this.t.hashCode() + fz5.h(fz5.h(fz5.h(fz5.h(fz5.h(this.n.hashCode() * 31, 31, this.o), 31, this.p), 31, this.q), 31, this.r), 31, this.s)) * 31);
    }

    public final String toString() {
        return "TakeBackup(currentBackup=" + this.n + ", doApkBackup=" + this.o + ", doDataBackup=" + this.p + ", doExtDataBackup=" + this.q + ", doExpansionBackup=" + this.r + ", doMediaBackup=" + this.s + ", localMetadata=" + this.t + ", isBackupUpdate=" + this.u + ")";
    }
}
