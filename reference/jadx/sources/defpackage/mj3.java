package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mj3 {
    public final String a;
    public final Long b;
    public final Long c;
    public final List d;

    public mj3(String str, Long l, Long l2, ww4 ww4Var) {
        ww4Var.getClass();
        this.a = str;
        this.b = l;
        this.c = l2;
        this.d = ww4Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mj3)) {
            return false;
        }
        mj3 mj3Var = (mj3) obj;
        return pe4.d(this.a, mj3Var.a) && pe4.d(this.b, mj3Var.b) && pe4.d(this.c, mj3Var.c) && pe4.d(this.d, mj3Var.d);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Long l = this.b;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.c;
        return this.d.hashCode() + ((iHashCode2 + (l2 != null ? l2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "FolderBackupDetails(sourceFolder=" + this.a + ", dateBackup=" + this.b + ", dateUpdated=" + this.c + ", parts=" + this.d + ")";
    }
}
