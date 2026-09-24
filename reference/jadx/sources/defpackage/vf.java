package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import org.swiftapps.swiftbackup.apkshare.ApkImportActivity;
import org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity;
import org.swiftapps.swiftbackup.walls.WallApplyActivity;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vf implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ vf(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                return ((ApkImportActivity) il0Var).getViewModelStore();
            case 1:
                return ((CallsBackupRestoreActivity) il0Var).getDefaultViewModelCreationExtras();
            case 2:
                return ((CallsBackupsActivity) il0Var).getViewModelStore();
            case 3:
                return ((sa1) il0Var).getViewModelStore();
            case 4:
                return ((DetailActivity) il0Var).getViewModelStore();
            case 5:
                return ((FilenSignInActivity) il0Var).getDefaultViewModelCreationExtras();
            case 6:
                return ((FolderDetailActivity) il0Var).getDefaultViewModelCreationExtras();
            case 7:
                return ((FolderPickerActivity) il0Var).getDefaultViewModelProviderFactory();
            case 8:
                return ((FoldersBatchActivity) il0Var).getViewModelStore();
            case XmlPullParser.COMMENT /* 9 */:
                return ((HomeSearchActivity) il0Var).getViewModelStore();
            case 10:
                return ((StorageSwitchActivity) il0Var).getDefaultViewModelCreationExtras();
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return ((WallApplyActivity) il0Var).getDefaultViewModelProviderFactory();
            default:
                return ((WallsDashActivity) il0Var).getDefaultViewModelProviderFactory();
        }
    }
}
