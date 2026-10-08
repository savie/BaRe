package defpackage;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class re1 {
    public final q63 a;
    public final File b;
    public final q63 c;

    public re1(q63 q63Var, File file, q63 q63Var2) {
        this.a = q63Var;
        this.b = file;
        this.c = q63Var2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof re1)) {
            return false;
        }
        re1 re1Var = (re1) obj;
        return this.a.equals(re1Var.a) && this.b.equals(re1Var.b) && this.c.equals(re1Var.c);
    }

    public final int hashCode() {
        return this.c.a.hashCode() + ((this.b.hashCode() + (this.a.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "LocalThumbnailFiles(source=" + this.a + ", thumbnail=" + this.b + ", testDirectory=" + this.c + ")";
    }
}
