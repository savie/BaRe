package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$BaseBackup;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$FolderLocalSnapshot;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$IncrementalBackup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ul3 extends xl3 {
    public final kj3 a;
    public final List b;
    public final ArrayList c;
    public final boolean d;
    public final int e;
    public final String f;
    public final String g;
    public final String h;

    public ul3(kj3 kj3Var) {
        String strN;
        this.a = kj3Var;
        FolderBackup$BaseBackup folderBackup$BaseBackupC = kj3Var.c();
        if (folderBackup$BaseBackupC == null) {
            c6.f("Null base backup!");
            throw null;
        }
        ArrayList arrayListA = kj3Var.a();
        List listN1 = arrayListA != null ? el1.n1(arrayListA, new c01(1)) : null;
        listN1 = listN1 == null ? ov2.a : listN1;
        this.b = listN1;
        this.c = el1.f1(kj3Var.c(), listN1);
        this.d = !listN1.isEmpty();
        this.e = listN1.size();
        String strS = Const.s(folderBackup$BaseBackupC.getDate());
        p93 p93Var = p93.a;
        this.f = u48.n(strS, " (", p93.c(Long.valueOf(folderBackup$BaseBackupC.getSize())), ")");
        long size = 0;
        if (listN1.isEmpty()) {
            strN = "";
        } else {
            String strS2 = Const.s(((FolderBackup$IncrementalBackup) el1.S0(listN1)).getDate());
            Iterator it = listN1.iterator();
            long size2 = 0;
            while (it.hasNext()) {
                size2 += ((FolderBackup$IncrementalBackup) it.next()).getSize();
            }
            strN = u48.n(strS2, " (", p93.c(Long.valueOf(size2)), ")");
        }
        this.g = strN;
        String strS3 = Const.s(((FolderBackup$FolderLocalSnapshot) el1.S0(this.c)).getDate());
        p93 p93Var2 = p93.a;
        Iterator it2 = this.c.iterator();
        while (it2.hasNext()) {
            size += ((FolderBackup$FolderLocalSnapshot) it2.next()).getSize();
        }
        this.h = u48.n(strS3, " (", p93.c(Long.valueOf(size)), ")");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ul3) && this.a == ((ul3) obj).a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "BackedUp(localBackup=" + this.a + ")";
    }
}
