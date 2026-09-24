package defpackage;

import org.swiftapps.swiftbackup.folders.data.BackupResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zj3 {
    public final kj3 a;
    public final BackupResult b;

    public zj3(kj3 kj3Var, BackupResult backupResult) {
        backupResult.getClass();
        this.a = kj3Var;
        this.b = backupResult;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zj3) {
            zj3 zj3Var = (zj3) obj;
            if (this.a == zj3Var.a && pe4.d(this.b, zj3Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "PrepResult(folderBackup=" + this.a + ", backupResult=" + this.b + ")";
    }
}
