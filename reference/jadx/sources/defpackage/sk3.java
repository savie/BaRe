package defpackage;

import java.util.Iterator;
import java.util.Map;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class sk3 {
    public static final gv7 a = new gv7(new dl(13));

    public static q63 a(FolderMetadata folderMetadata) {
        int i;
        String manifestLink;
        Long manifestSize;
        folderMetadata.getClass();
        vr6.i$default(vr6.INSTANCE, "FolderCloudManifestCache", "Downloading latest manifest file from cloud", null, 4, null);
        if (!folderMetadata.hasValidCloudLinks()) {
            g84.f(xs1.j("FolderMetadata doesn't have valid cloud links: ", folderMetadata.toDisplayString()));
            return null;
        }
        Map<String, FolderMetadata.IncrementalBackup> incrementalBackups = folderMetadata.getIncrementalBackups();
        if (incrementalBackups == null || incrementalBackups.isEmpty()) {
            FolderMetadata.BaseBackup baseBackup = folderMetadata.getBaseBackup();
            if (baseBackup == null || !baseBackup.isValid()) {
                q.d(baseBackup, "Invalid base backup: ");
                return null;
            }
            i = 31;
            manifestLink = baseBackup.getManifestLink();
            manifestSize = baseBackup.getManifestSize();
        } else {
            Iterator<T> it = folderMetadata.getIncrementalBackups().values().iterator();
            if (!it.hasNext()) {
                m0.d();
                return null;
            }
            Object next = it.next();
            if (it.hasNext()) {
                long date = ((FolderMetadata.IncrementalBackup) next).getDate();
                do {
                    Object next2 = it.next();
                    long date2 = ((FolderMetadata.IncrementalBackup) next2).getDate();
                    if (date < date2) {
                        next = next2;
                        date = date2;
                    }
                } while (it.hasNext());
            }
            FolderMetadata.IncrementalBackup incrementalBackup = (FolderMetadata.IncrementalBackup) next;
            if (!incrementalBackup.isValid()) {
                q.d(incrementalBackup, "Invalid incremental backup: ");
                return null;
            }
            String manifestLink2 = incrementalBackup.getManifestLink();
            manifestSize = incrementalBackup.getManifestSize();
            i = 33;
            manifestLink = manifestLink2;
        }
        int i2 = i;
        if (manifestSize == null || manifestSize.longValue() <= 0) {
            l0.e("Check failed.");
            return null;
        }
        q63 q63VarB = b(folderMetadata.getFolderItem().getId());
        io4.g(q63VarB);
        if (q63VarB.k()) {
            long jA = q63VarB.A();
            if (jA == manifestSize.longValue()) {
                Long lValueOf = Long.valueOf(jA);
                p93 p93Var = p93.a;
                vr6.i$default(vr6.INSTANCE, "FolderCloudManifestCache", eq3.k("Latest manifest file already downloaded (", p93.c(lValueOf), ")"), null, 4, null);
                return q63VarB;
            }
            q63VarB.h();
        }
        manifestLink.getClass();
        if (manifestSize.longValue() <= 0) {
            manifestSize = null;
        }
        fo2 fo2Var = new fo2(manifestLink, i2, manifestSize != null ? manifestSize.longValue() : -1L, q63VarB);
        tb1 tb1Var = tb1.a;
        if (qb1.c().c(fo2Var).b().e()) {
            if (q63VarB.k()) {
                return q63VarB;
            }
            g84.f("Manifest file not found at ".concat(q63VarB.v()));
        }
        return null;
    }

    public static q63 b(String str) {
        return ((q63) a.getValue()).J(str + ".json");
    }
}
