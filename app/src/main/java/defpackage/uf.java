package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.bareapps.barebackup.apkshare.ApkImportActivity;
import com.bareapps.barebackup.blacklist.BlacklistActivity;
import com.bareapps.barebackup.cloud.connect.FilenSignInActivity;
import com.bareapps.barebackup.detail.DetailActivity;
import com.bareapps.barebackup.folders.ui.FolderDetailActivity;
import com.bareapps.barebackup.folders.ui.batch.FoldersBatchActivity;
import com.bareapps.barebackup.home.search.HomeSearchActivity;
import com.bareapps.barebackup.home.storageswitch.StorageSwitchActivity;
import com.bareapps.barebackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import com.bareapps.barebackup.messagescalls.backups.CallsBackupsActivity;
import com.bareapps.barebackup.settings.MultipleBackupsActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uf implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ uf(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                return ((ApkImportActivity) il0Var).getDefaultViewModelProviderFactory();
            case 1:
                return il0Var.getDefaultViewModelCreationExtras();
            case 2:
                return ((BlacklistActivity) il0Var).getDefaultViewModelCreationExtras();
            case 3:
                return ((CallsBackupRestoreActivity) il0Var).getViewModelStore();
            case 4:
                return ((CallsBackupsActivity) il0Var).getDefaultViewModelProviderFactory();
            case 5:
                return ((sa1) il0Var).getDefaultViewModelProviderFactory();
            case 6:
                return ((DetailActivity) il0Var).getDefaultViewModelProviderFactory();
            case 7:
                return ((FilenSignInActivity) il0Var).getViewModelStore();
            case 8:
                return ((FolderDetailActivity) il0Var).getViewModelStore();
            case XmlPullParser.COMMENT /* 9 */:
                return ((FoldersBatchActivity) il0Var).getDefaultViewModelProviderFactory();
            case 10:
                return ((HomeSearchActivity) il0Var).getDefaultViewModelProviderFactory();
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return ((MultipleBackupsActivity) il0Var).getDefaultViewModelCreationExtras();
            default:
                return ((StorageSwitchActivity) il0Var).getViewModelStore();
        }
    }
}
