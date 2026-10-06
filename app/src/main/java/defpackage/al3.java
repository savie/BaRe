package defpackage;

import android.os.Looper;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.data.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class al3 {
    public static void a(FolderMetadata folderMetadata) {
        Collection<FolderMetadata.IncrementalBackup> collectionValues;
        folderMetadata.getClass();
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return;
        }
        vr6.i$default(vr6.INSTANCE, "FolderDeleteHelper", xs1.j("Deleting cloud backup: ", folderMetadata.toDisplayString()), null, 4, null);
        folderMetadata.removeFromFirebaseNode();
        ArrayList arrayList = new ArrayList();
        FolderMetadata.BaseBackup baseBackup = folderMetadata.getBaseBackup();
        if (baseBackup == null) {
            c6.f("Required value was null.");
            return;
        }
        arrayList.add(baseBackup.getBackupLink());
        arrayList.add(baseBackup.getManifestLink());
        Map<String, FolderMetadata.IncrementalBackup> incrementalBackups = folderMetadata.getIncrementalBackups();
        if (incrementalBackups != null && (collectionValues = incrementalBackups.values()) != null) {
            for (FolderMetadata.IncrementalBackup incrementalBackup : collectionValues) {
                arrayList.add(incrementalBackup.getBackupLink());
                arrayList.add(incrementalBackup.getManifestLink());
            }
        }
        jd1 jd1Var = new jd1(eq3.p(arrayList));
        tb1 tb1Var = tb1.a;
        jq6 jq6VarC = qb1.c().b(jd1Var).c();
        if (jq6VarC.q()) {
            vr6.i$default(vr6.INSTANCE, "FolderDeleteHelper", xs1.j("Deleted cloud backup: ", folderMetadata.toDisplayString()), null, 4, null);
        } else {
            g84.f("Error deleting cloud backup files: ".concat(jq6VarC.b()));
        }
    }

    public static void b(FolderItem folderItem, boolean z) {
        FolderItem folderItem2;
        folderItem.getClass();
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return;
        }
        vr6.i$default(vr6.INSTANCE, "FolderDeleteHelper", xs1.j("Deleting local backup: ", folderItem.toDisplayString()), null, 4, null);
        kj3 kj3VarA = a.a(folderItem, false, false);
        if (!kj3VarA.b().g()) {
            l0.e("Error deleting backup files");
            return;
        }
        if (z) {
            folderItem2 = folderItem;
        } else {
            folderItem2 = folderItem;
            new FolderMetadata(folderItem2, null, null, 6, null).writeToFile(kj3VarA.d());
        }
        String id = folderItem2.getId();
        id.getClass();
        Log.d("FolderEventSingle", "FolderEventSingle requested by ".concat(al3.class.getSimpleName()));
        ny2.b().e(new mm3(id));
    }
}
