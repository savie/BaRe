package defpackage;

import java.io.File;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r17 {
    public final File a;
    public final File b;
    public final f27 c;
    public final List d;

    public r17(File file, File file2, f27 f27Var, List list) {
        f27Var.getClass();
        this.a = file;
        this.b = file2;
        this.c = f27Var;
        this.d = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r17)) {
            return false;
        }
        r17 r17Var = (r17) obj;
        return this.a.equals(r17Var.a) && this.b.equals(r17Var.b) && this.c == r17Var.c && pe4.d(this.d, r17Var.d);
    }

    public final int hashCode() {
        int iHashCode = (this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31;
        List list = this.d;
        return iHashCode + (list == null ? 0 : list.hashCode());
    }

    public final String toString() {
        return "SbaRootTarExtractArgs(tarFile=" + this.a + ", targetDir=" + this.b + ", restoreProfile=" + this.c + ", includePaths=" + this.d + ")";
    }
}
