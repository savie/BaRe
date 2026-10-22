package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bl3 {
    public final qp3 a;
    public final vy7 b;
    public gz7 c;

    public bl3(qp3 qp3Var, vy7 vy7Var) {
        vy7Var.getClass();
        this.a = qp3Var;
        this.b = vy7Var;
        this.c = gz7.WAITING;
    }

    public final boolean a() {
        boolean z;
        boolean z2;
        this.c = gz7.RUNNING;
        qp3 qp3Var = this.a;
        List list = qp3Var.m;
        ArrayList<FolderItem> arrayList = new ArrayList(hl1.G0(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((eo3) it.next()).a());
        }
        int i = 0;
        boolean z3 = true;
        for (FolderItem folderItem : arrayList) {
            int i2 = i + 1;
            if (this.c.isCancelled()) {
                break;
            }
            qp3Var.p(folderItem);
            String str = i2 + "/" + arrayList.size();
            if (arrayList.size() > 1) {
                qp3Var.d.i(str);
            }
            vr6 vr6Var = vr6.INSTANCE;
            vr6.i$default(vr6Var, "FolderBackupDeleteHelper", "Processing ".concat(str), null, 4, null);
            ex6 ex6Var = qp3Var.i;
            SwiftApp.Companion companion = SwiftApp.d;
            ex6Var.i(SwiftApp.Companion.c().getString(R.string.delete_backup_files));
            vy7 vy7Var = this.b;
            vy7Var.getClass();
            vr6.i$default(vr6Var, "FolderBackupDeleteHelper", "Deleting backup file(s) for " + folderItem + " with params=" + vy7Var, null, 4, null);
            ArrayList arrayList2 = new ArrayList();
            List list2 = vy7Var.f;
            if (list2.contains(q05.DEVICE)) {
                try {
                    al3.b(folderItem, false);
                    z = true;
                } catch (Exception e) {
                    vr6.e$default(vr6.INSTANCE, "FolderBackupDeleteHelper", "Error deleting backup for " + folderItem, e, null, 8, null);
                    z = false;
                }
                arrayList2.add(Boolean.valueOf(z));
            }
            if (list2.contains(q05.CLOUD)) {
                try {
                    FolderMetadata folderMetadataFetchCloudBackup = folderItem.fetchCloudBackup();
                    if (folderMetadataFetchCloudBackup != null) {
                        al3.a(folderMetadataFetchCloudBackup);
                    }
                    z2 = true;
                } catch (Exception e2) {
                    vr6.e$default(vr6.INSTANCE, "FolderBackupDeleteHelper", "Error deleting backup for " + folderItem, e2, null, 8, null);
                    z2 = false;
                }
                arrayList2.add(Boolean.valueOf(z2));
            }
            if (arrayList2.isEmpty()) {
                z3 = true;
                break;
            }
            Iterator it2 = arrayList2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z3 = true;
                    break;
                    break;
                }
                if (!((Boolean) it2.next()).booleanValue()) {
                    z3 = false;
                    break;
                }
            }
            qp3Var.n(i2 * 100);
            i = i2;
        }
        this.c = gz7.COMPLETE;
        return z3;
    }
}
