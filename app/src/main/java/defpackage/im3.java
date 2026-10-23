package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$IncrementalBackup;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.data.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class im3 {
    public final qp3 a;
    public final FolderMetadata b;
    public final em3 c;
    public final CopyOnWriteArrayList d;
    public boolean e;
    public final hm3 f;
    public pv g;

    /* JADX WARN: Code duplicated, block: B:34:0x0105  */
    public im3(qp3 qp3Var, FolderMetadata folderMetadata) {
        ArrayList arrayList;
        folderMetadata.getClass();
        this.a = qp3Var;
        this.b = folderMetadata;
        if (!folderMetadata.hasValidCloudLinks()) {
            q.d(folderMetadata, "No valid cloud links to construct FolderDownload from metadata: ");
            throw null;
        }
        kj3 kj3VarA = a.a(folderMetadata.getFolderItem(), true, true);
        FolderMetadata.BaseBackup baseBackup = folderMetadata.getBaseBackup();
        if (baseBackup == null) {
            c6.f("Required value was null.");
            throw null;
        }
        if (!baseBackup.isValid()) {
            q.d(baseBackup, "Invalid base backup: ");
            throw null;
        }
        List listA0 = fl1.A0(new fo2(baseBackup.getBackupLink(), 30, io4.h(baseBackup.getBackupSize()), kj3VarA.c().getBackupFile()), new fo2(baseBackup.getManifestLink(), 31, io4.h(baseBackup.getManifestSize()), kj3VarA.c().getManifestFile()));
        Map<String, FolderMetadata.IncrementalBackup> incrementalBackups = folderMetadata.getIncrementalBackups();
        if (incrementalBackups == null || (collectionValues = incrementalBackups.values()) == null) {
            arrayList = null;
        } else {
            Collection<FolderMetadata.IncrementalBackup> collectionValues = collectionValues.isEmpty() ? null : collectionValues;
            if (collectionValues == null) {
                arrayList = null;
            } else {
                for (FolderMetadata.IncrementalBackup incrementalBackup : collectionValues) {
                    if (!incrementalBackup.isValid()) {
                        q.d(incrementalBackup, "Incremental backup doesn't exist or is missing files: ");
                        throw null;
                    }
                }
                arrayList = new ArrayList();
                for (FolderMetadata.IncrementalBackup incrementalBackup2 : collectionValues) {
                    if (!incrementalBackup2.isValid()) {
                        q.d(incrementalBackup2, "Invalid incremental backup: ");
                        throw null;
                    }
                    String timestamp = incrementalBackup2.getTimestamp();
                    timestamp.getClass();
                    FolderBackup$IncrementalBackup folderBackup$IncrementalBackup = new FolderBackup$IncrementalBackup(kj3VarA.b(), timestamp);
                    fo2 fo2Var = new fo2(incrementalBackup2.getBackupLink(), 32, io4.h(incrementalBackup2.getBackupSize()), folderBackup$IncrementalBackup.getBackupFile());
                    fo2 fo2Var2 = new fo2(incrementalBackup2.getManifestLink(), 33, io4.h(incrementalBackup2.getManifestSize()), folderBackup$IncrementalBackup.getManifestFile());
                    arrayList.add(fo2Var);
                    arrayList.add(fo2Var2);
                }
            }
        }
        this.c = new em3(folderMetadata.getTotalSize(), arrayList, listA0, folderMetadata);
        this.d = new CopyOnWriteArrayList();
        this.f = new hm3();
    }
}
