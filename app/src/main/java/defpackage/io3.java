package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$BaseBackup;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$IncrementalBackup;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class io3 {
    public final bo3 a;
    public final qp3 b;
    public final FolderItem c;
    public final kj3 d;
    public final FolderMetadata e;
    public final fo3 f;
    public final CopyOnWriteArrayList g;
    public FolderMetadata h;
    public boolean i;
    public final ho3 j;
    public dk3 k;

    public io3(bo3 bo3Var, qp3 qp3Var) {
        List listA0;
        ArrayList arrayList;
        Long lValueOf;
        this.a = bo3Var;
        this.b = qp3Var;
        this.c = bo3Var.a;
        kj3 kj3Var = bo3Var.d;
        Long lValueOf2 = null;
        if (kj3Var == null) {
            c6.f("props.backupToUpload should not be null");
            throw null;
        }
        this.d = kj3Var;
        FolderMetadata folderMetadataH = kj3Var.h();
        if (folderMetadataH == null) {
            c6.f("Required value was null.");
            throw null;
        }
        this.e = folderMetadataH;
        FolderBackup$BaseBackup folderBackup$BaseBackupC = kj3Var.c();
        folderBackup$BaseBackupC = folderBackup$BaseBackupC.exists() ? folderBackup$BaseBackupC : null;
        ArrayList<FolderBackup$IncrementalBackup> arrayListA = kj3Var.a();
        String str = kj3Var.a;
        if (folderBackup$BaseBackupC != null) {
            str.getClass();
            q63 backupFile = folderBackup$BaseBackupC.getBackupFile();
            SyncOption syncOption = SyncOption.WIFI;
            listA0 = fl1.A0(new rf8(backupFile, 30, true, str, syncOption == null), new rf8(folderBackup$BaseBackupC.getManifestFile(), 31, true, str, syncOption == null));
        } else {
            listA0 = null;
        }
        str.getClass();
        if (arrayListA == null || arrayListA.isEmpty()) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList();
            for (FolderBackup$IncrementalBackup folderBackup$IncrementalBackup : arrayListA) {
                if (!folderBackup$IncrementalBackup.exists()) {
                    q.d(folderBackup$IncrementalBackup, "Incremental backup doesn't exist or is missing files: ");
                    throw null;
                }
                q63 backupFile2 = folderBackup$IncrementalBackup.getBackupFile();
                SyncOption syncOption2 = SyncOption.WIFI;
                rf8 rf8Var = new rf8(backupFile2, 32, true, str, syncOption2 == null);
                rf8 rf8Var2 = new rf8(folderBackup$IncrementalBackup.getManifestFile(), 33, true, str, syncOption2 == null);
                arrayList2.add(rf8Var);
                arrayList2.add(rf8Var2);
            }
            arrayList = arrayList2;
        }
        FolderMetadata folderMetadataH2 = kj3Var.h();
        if (folderMetadataH2 == null) {
            l0.e("Required value was null.");
            throw null;
        }
        long jA = 0;
        if (listA0 != null) {
            Iterator it = listA0.iterator();
            long jA2 = 0;
            while (it.hasNext()) {
                jA2 += ((rf8) it.next()).a();
            }
            lValueOf = Long.valueOf(jA2);
        } else {
            lValueOf = null;
        }
        long jH = io4.h(lValueOf);
        if (arrayList != null) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                jA += ((rf8) it2.next()).a();
            }
            lValueOf2 = Long.valueOf(jA);
        }
        this.f = new fo3(io4.h(lValueOf2) + jH, arrayList, listA0, folderMetadataH2);
        this.g = new CopyOnWriteArrayList();
        this.j = new ho3();
    }

    public final void a(ConcurrentHashMap concurrentHashMap) {
        vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "Cleaning uploaded files", null, 4, null);
        ArrayList arrayList = new ArrayList();
        Iterator it = concurrentHashMap.entrySet().iterator();
        while (it.hasNext()) {
            String str = ((zf8) ((Map.Entry) it.next()).getValue()).a;
            if (str != null) {
                arrayList.add(str);
            }
        }
        List listP = eq3.p(arrayList);
        if (listP.isEmpty()) {
            return;
        }
        tb1 tb1Var = tb1.a;
        jq6 jq6VarC = qb1.c().b(new jd1(el1.v1(new LinkedHashSet(listP)))).c();
        if (jq6VarC.c()) {
            String strB = jq6VarC.b();
            vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "Error cleaning uploaded files: ".concat(strB), null, 4, null);
            ho3 ho3Var = this.j;
            String str2 = ho3Var.a;
            if (str2 == null || str2.length() == 0) {
                ho3Var.a = dj7.k(this.e.getFolderItem().getDisplayName(), ": ", strB);
            }
        }
    }
}
