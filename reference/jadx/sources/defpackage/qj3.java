package defpackage;

import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.settings.FolderBackupStrategy;
import org.swiftapps.swiftbackup.settings.FolderRestoreStrategy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qj3 implements bt3 {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ qj3(FoldersBatchActivity foldersBatchActivity, boolean z, FolderRestoreStrategy folderRestoreStrategy) {
        this.c = foldersBatchActivity;
        this.b = z;
        this.d = folderRestoreStrategy;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        do3 do3Var;
        int i = this.a;
        be8 be8Var = be8.a;
        final boolean z = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                rj3 rj3Var = (rj3) obj2;
                il0 il0Var = rj3Var.Q;
                FolderBackupStrategy folderBackupStrategy = (FolderBackupStrategy) obj;
                if (z) {
                    int i2 = PremiumActivity.V;
                    rs9.u(il0Var);
                } else {
                    rj3Var.Z = folderBackupStrategy;
                    NestedScrollView nestedScrollView = ((sj3) rj3Var.K).a;
                    nestedScrollView.getClass();
                    il0Var.x(nestedScrollView, TextView.class);
                    rj3Var.l();
                }
                return be8Var;
            case 1:
                final FoldersBatchActivity foldersBatchActivity = (FoldersBatchActivity) obj2;
                FolderRestoreStrategy folderRestoreStrategy = (FolderRestoreStrategy) obj;
                List<zk3> listL = foldersBatchActivity.V.l();
                final ArrayList arrayList = new ArrayList(hl1.G0(listL, 10));
                for (zk3 zk3Var : listL) {
                    if (z) {
                        FolderMetadata folderMetadataFetchCloudBackup = zk3Var.a.fetchCloudBackup();
                        FolderItem folderItem = zk3Var.a;
                        if (folderMetadataFetchCloudBackup == null) {
                            f6.g(xs1.j("isCloudRestore is true but we don't have any cloud backups for folder: ", folderItem.getDisplayName()));
                            return null;
                        }
                        do3Var = new do3(folderItem, null, folderMetadataFetchCloudBackup, folderRestoreStrategy, null);
                    } else {
                        kj3 kj3VarFetchLocalBackup = zk3Var.a.fetchLocalBackup();
                        FolderItem folderItem2 = zk3Var.a;
                        if (kj3VarFetchLocalBackup == null) {
                            f6.g(xs1.j("No local backup for folder: ", folderItem2.getDisplayName()));
                            return null;
                        }
                        do3Var = new do3(folderItem2, kj3VarFetchLocalBackup, null, folderRestoreStrategy, null);
                    }
                    arrayList.add(do3Var);
                }
                zn4 zn4Var = zn4.a;
                zn4.e(new bt3() { // from class: lo3
                    @Override // defpackage.bt3
                    public final Object invoke() {
                        int i3 = FoldersBatchActivity.Y;
                        FoldersBatchActivity foldersBatchActivity2 = foldersBatchActivity;
                        boolean zIsFinishing = foldersBatchActivity2.isFinishing();
                        be8 be8Var2 = be8.a;
                        if (zIsFinishing) {
                            return be8Var2;
                        }
                        FolderRestoreStrategy.Companion.getClass();
                        bj0 bj0Var = new bj0(foldersBatchActivity2, arrayList, new wy7(FolderRestoreStrategy.MISSING_ONLY));
                        if (z) {
                            sa1.R(foldersBatchActivity2, null, bj0Var, 1);
                            return be8Var2;
                        }
                        bj0Var.invoke();
                        return be8Var2;
                    }
                });
                return be8Var;
            default:
                c47.a.e((ScheduleData) obj2);
                zn4.c(new h47((q47) obj, z));
                return be8Var;
        }
    }

    public /* synthetic */ qj3(ScheduleData scheduleData, q47 q47Var, boolean z) {
        this.c = scheduleData;
        this.d = q47Var;
        this.b = z;
    }

    public /* synthetic */ qj3(boolean z, rj3 rj3Var, FolderBackupStrategy folderBackupStrategy) {
        this.b = z;
        this.c = rj3Var;
        this.d = folderBackupStrategy;
    }
}
