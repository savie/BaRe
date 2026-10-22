package defpackage;

import com.bareapps.barebackup.apkshare.ApkImportActivity;
import com.bareapps.barebackup.appconfigs.settings.ConfigSettingsActivity;
import com.bareapps.barebackup.appslist.ui.labels.LabelsActivity;
import com.bareapps.barebackup.detail.DetailActivity;
import com.bareapps.barebackup.folders.ui.FolderPickerActivity;
import com.bareapps.barebackup.folders.ui.FoldersDashActivity;
import com.bareapps.barebackup.folders.ui.batch.FoldersBatchActivity;
import com.bareapps.barebackup.home.search.HomeSearchActivity;
import com.bareapps.barebackup.messagescalls.backups.CallsBackupsActivity;
import com.bareapps.barebackup.walls.WallApplyActivity;
import com.bareapps.barebackup.walls.WallsDashActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wf implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ wf(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                return ((ApkImportActivity) il0Var).getDefaultViewModelCreationExtras();
            case 1:
                return ((CallsBackupsActivity) il0Var).getDefaultViewModelCreationExtras();
            case 2:
                return ((sa1) il0Var).getDefaultViewModelCreationExtras();
            case 3:
                return ((ConfigSettingsActivity) il0Var).getDefaultViewModelProviderFactory();
            case 4:
                return ((DetailActivity) il0Var).getDefaultViewModelCreationExtras();
            case 5:
                return ((FolderPickerActivity) il0Var).getViewModelStore();
            case 6:
                return ((FoldersBatchActivity) il0Var).getDefaultViewModelCreationExtras();
            case 7:
                return ((FoldersDashActivity) il0Var).getDefaultViewModelProviderFactory();
            case 8:
                return ((HomeSearchActivity) il0Var).getDefaultViewModelCreationExtras();
            case XmlPullParser.COMMENT /* 9 */:
                return ((LabelsActivity) il0Var).getDefaultViewModelProviderFactory();
            case 10:
                return ((WallApplyActivity) il0Var).getViewModelStore();
            default:
                return ((WallsDashActivity) il0Var).getViewModelStore();
        }
    }
}
