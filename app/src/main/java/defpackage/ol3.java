package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ol3 extends tl3 {
    public final FolderMetadata a;
    public final List b;
    public final ArrayList c;
    public final boolean d;
    public final int e;
    public final String f;
    public final String g;
    public final String h;

    public ol3(FolderMetadata folderMetadata) {
        String strN;
        Collection<FolderMetadata.IncrementalBackup> collectionValues;
        this.a = folderMetadata;
        FolderMetadata.BaseBackup baseBackup = folderMetadata.getBaseBackup();
        List listN1 = null;
        if (baseBackup == null) {
            c6.f("Null base backup!");
            throw null;
        }
        Map<String, FolderMetadata.IncrementalBackup> incrementalBackups = folderMetadata.getIncrementalBackups();
        if (incrementalBackups != null && (collectionValues = incrementalBackups.values()) != null) {
            listN1 = el1.n1(collectionValues, new nx(5));
        }
        listN1 = listN1 == null ? ov2.a : listN1;
        this.b = listN1;
        this.c = el1.f1(baseBackup, listN1);
        this.d = !listN1.isEmpty();
        this.e = listN1.size();
        String strS = Const.s(baseBackup.getDate());
        p93 p93Var = p93.a;
        this.f = u48.n(strS, " (", p93.c(Long.valueOf(baseBackup.getSize())), ")");
        long size = 0;
        if (listN1.isEmpty()) {
            strN = "";
        } else {
            String strS2 = Const.s(((FolderMetadata.IncrementalBackup) el1.S0(listN1)).getDate());
            Iterator it = listN1.iterator();
            long size2 = 0;
            while (it.hasNext()) {
                size2 += ((FolderMetadata.IncrementalBackup) it.next()).getSize();
            }
            strN = u48.n(strS2, " (", p93.c(Long.valueOf(size2)), ")");
        }
        this.g = strN;
        String strS3 = Const.s(((vm3) el1.S0(this.c)).getDate());
        p93 p93Var2 = p93.a;
        Iterator it2 = this.c.iterator();
        while (it2.hasNext()) {
            size += ((vm3) it2.next()).getSize();
        }
        this.h = u48.n(strS3, " (", p93.c(Long.valueOf(size)), ")");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ol3) && this.a.equals(((ol3) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "BackedUp(cloudBackup=" + this.a + ")";
    }
}
