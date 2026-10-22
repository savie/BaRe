package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.bareapps.barebackup.appslist.ui.labels.LabelEditActivity;
import com.bareapps.barebackup.appsquickactions.AppsQuickActionsActivity;
import com.bareapps.barebackup.cloud.connect.CsActivity;
import com.bareapps.barebackup.cloud.connect.MegaSignInActivity;
import com.bareapps.barebackup.cloud.connect.PCloudSignInActivity;
import com.bareapps.barebackup.cloud.diagnostics.CloudDiagnosticsActivity;
import com.bareapps.barebackup.contributor.ContributorRegActivity;
import com.bareapps.barebackup.home.schedule.ScheduleLabelsSelectActivity;
import com.bareapps.barebackup.locale.LocaleActivity;
import com.bareapps.barebackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import com.bareapps.barebackup.messagescalls.dash.CallsDashActivity;
import com.bareapps.barebackup.walls.WallsManageActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class o30 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ o30(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                return ((AppsQuickActionsActivity) il0Var).getDefaultViewModelProviderFactory();
            case 1:
                return ((CallsDashActivity) il0Var).getDefaultViewModelProviderFactory();
            case 2:
                return ((CloudDiagnosticsActivity) il0Var).getDefaultViewModelCreationExtras();
            case 3:
                return ((ContributorRegActivity) il0Var).getDefaultViewModelCreationExtras();
            case 4:
                return ((CsActivity) il0Var).getDefaultViewModelCreationExtras();
            case 5:
                return ((LabelEditActivity) il0Var).getDefaultViewModelCreationExtras();
            case 6:
                return ((LocaleActivity) il0Var).getViewModelStore();
            case 7:
                return ((MegaSignInActivity) il0Var).getViewModelStore();
            case 8:
                return ((MessagesBackupRestoreActivity) il0Var).getDefaultViewModelCreationExtras();
            case XmlPullParser.COMMENT /* 9 */:
                return ((fq5) il0Var).getViewModelStore();
            case 10:
                return ((PCloudSignInActivity) il0Var).getDefaultViewModelProviderFactory();
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return ((ScheduleLabelsSelectActivity) il0Var).getDefaultViewModelCreationExtras();
            default:
                return ((WallsManageActivity) il0Var).getDefaultViewModelProviderFactory();
        }
    }
}
