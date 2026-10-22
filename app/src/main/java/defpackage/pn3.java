package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.folders.data.Changes;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.data.FolderState;
import org.swiftapps.swiftbackup.folders.data.Manifest;
import org.swiftapps.swiftbackup.settings.FolderRestoreStrategy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class pn3 {
    /* JADX WARN: Code duplicated, block: B:9:0x003d  */
    public static nn3 a(do3 do3Var, boolean z, FolderState folderState) {
        q63 q63VarG;
        boolean z2;
        FolderItem folderItem = do3Var.a;
        String displayString = folderItem.toDisplayString();
        FolderRestoreStrategy folderRestoreStrategy = do3Var.d;
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "FolderRestoreHelper", "Checking if restore is needed for: " + displayString + ". Restore strategy: " + folderRestoreStrategy, null, 4, null);
        String sourceFolder = do3Var.e;
        if (sourceFolder == null) {
            sourceFolder = folderItem.getSourceFolder();
        } else {
            if (nq7.j0(sourceFolder)) {
                sourceFolder = null;
            }
            if (sourceFolder == null) {
                sourceFolder = folderItem.getSourceFolder();
            }
        }
        q63 q63Var = new q63(sourceFolder, 1);
        String strV = q63Var.v();
        boolean zJ = q63Var.j();
        if (!zJ) {
            vr6.i$default(vr6Var, "FolderRestoreHelper", "Target folder does not exist, restore needed", null, 4, null);
            return new nn3(true, strV, false, null);
        }
        FolderMetadata folderMetadata = do3Var.c;
        if (folderMetadata == null || z) {
            kj3 kj3Var = do3Var.b;
            if (kj3Var == null) {
                c6.f("props.localBackup cannot be null!");
                return null;
            }
            q63VarG = kj3Var.g();
        } else {
            if (folderMetadata == null) {
                c6.f("props.cloudBackup cannot be null!");
                return null;
            }
            q63VarG = sk3.a(folderMetadata);
        }
        if (q63VarG == null) {
            vr6.w$default(vr6Var, "FolderRestoreHelper", "Failed to download latest manifest, assuming restore needed", null, 4, null);
            return new nn3(true, strV, zJ, null);
        }
        Manifest manifestB = tm3.b(q63VarG);
        if (manifestB == null) {
            vr6.w$default(vr6Var, "FolderRestoreHelper", "Failed to read manifest, assuming restore needed", null, 4, null);
            return new nn3(true, strV, zJ, null);
        }
        FolderState currentState = manifestB.getCurrentState();
        FolderState folderStateD = folderState == null ? new yn3().d(q63Var) : folderState;
        Changes changesA = yn3.a(currentState, folderStateD);
        if (folderRestoreStrategy == FolderRestoreStrategy.FULL_RESTORE && changesA.hasOnlyDeletions()) {
            vr6.i$default(vr6Var, "FolderRestoreHelper", "Only deletions detected for " + folderRestoreStrategy + ", handle deletions & skip restore", null, 4, null);
            b(q63Var, currentState, folderStateD);
            return new nn3(false, strV, zJ, folderStateD);
        }
        int i = on3.a[folderRestoreStrategy.ordinal()];
        if (i == 1) {
            z2 = (changesA.getFilesAdded().isEmpty() && changesA.getDirectoriesAdded().isEmpty()) ? false : true;
            if (z2) {
                vr6.i$default(vr6Var, "FolderRestoreHelper", "Restore needed (" + folderRestoreStrategy + "): " + Changes.asString$default(changesA, false, 1, null), null, 4, null);
            } else {
                vr6.i$default(vr6Var, "FolderRestoreHelper", "Restore not needed (" + folderRestoreStrategy + "), all files exist locally", null, 4, null);
            }
        } else if (i == 2) {
            z2 = (changesA.getFilesAdded().isEmpty() && changesA.getFilesModified().isEmpty() && changesA.getDirectoriesAdded().isEmpty()) ? false : true;
            if (z2) {
                vr6.i$default(vr6Var, "FolderRestoreHelper", "Restore needed (" + folderRestoreStrategy + "): " + Changes.asString$default(changesA, false, 1, null), null, 4, null);
            } else {
                vr6.i$default(vr6Var, "FolderRestoreHelper", "Restore not needed (" + folderRestoreStrategy + "), local folder matches backup state", null, 4, null);
            }
        } else {
            if (i != 3) {
                q.j();
                return null;
            }
            boolean zIsEmpty = changesA.isEmpty();
            z2 = !zIsEmpty;
            if (zIsEmpty) {
                vr6.i$default(vr6Var, "FolderRestoreHelper", "Restore not needed (" + folderRestoreStrategy + "), local folder matches backup state", null, 4, null);
            } else {
                vr6.i$default(vr6Var, "FolderRestoreHelper", "Restore needed (" + folderRestoreStrategy + "): " + Changes.asString$default(changesA, false, 1, null), null, 4, null);
            }
        }
        return new nn3(z2, strV, zJ, folderStateD);
    }

    public static void b(q63 q63Var, FolderState folderState, FolderState folderState2) {
        int i;
        yn3 yn3Var = new yn3();
        if (folderState2 == null) {
            folderState2 = yn3Var.d(q63Var);
        }
        Set<String> setKeySet = folderState2.getFiles().keySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setKeySet) {
            if (!folderState.getFiles().containsKey((String) obj)) {
                arrayList.add(obj);
            }
        }
        Set setZ1 = el1.z1(folderState.getDirectories());
        List<String> directories = folderState2.getDirectories();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : directories) {
            if (!setZ1.contains((String) obj2)) {
                arrayList2.add(obj2);
            }
        }
        List listN1 = el1.n1(arrayList2, new jc1(2));
        if (!arrayList.isEmpty() || !listN1.isEmpty()) {
            vr6.i$default(vr6.INSTANCE, "handleDeletions", "Handling deletions for files not in backup state", null, 4, null);
        }
        int i2 = 0;
        if (arrayList.isEmpty()) {
            i = 0;
        } else {
            Iterator it = arrayList.iterator();
            i = 0;
            while (it.hasNext()) {
                if (q63Var.J((String) it.next()).h() && (i = i + 1) < 0) {
                    fl1.E0();
                    throw null;
                }
            }
        }
        if (!listN1.isEmpty()) {
            Iterator it2 = listN1.iterator();
            while (it2.hasNext()) {
                if (q63Var.J((String) it2.next()).h() && (i2 = i2 + 1) < 0) {
                    fl1.E0();
                    throw null;
                }
            }
        }
        if (i > 0 || i2 > 0) {
            ArrayList arrayList3 = new ArrayList();
            if (i > 0) {
                arrayList3.add(i + " files");
            }
            if (i2 > 0) {
                arrayList3.add(i2 + " directories");
            }
            vr6.i$default(vr6.INSTANCE, "handleDeletions", "Deleted ".concat(el1.Y0(arrayList3, " and ", null, null, null, 62)), null, 4, null);
        }
    }
}
