package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zf {
    public final q63 a;
    public final List b;
    public final List c;
    public final String d;

    public zf(q63 q63Var, List list, List list2, String str) {
        this.a = q63Var;
        this.b = list;
        this.c = list2;
        this.d = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zf)) {
            return false;
        }
        zf zfVar = (zf) obj;
        return this.a.equals(zfVar.a) && this.b.equals(zfVar.b) && this.c.equals(zfVar.c) && pe4.d(this.d, zfVar.d);
    }

    public final int hashCode() {
        int i = fz5.i(this.c, fz5.i(this.b, this.a.a.hashCode() * 31, 31), 31);
        String str = this.d;
        return i + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "ApkImportInstallRequest(workingDir=" + this.a + ", apkFiles=" + this.b + ", metadataFiles=" + this.c + ", packageName=" + this.d + ")";
    }
}
