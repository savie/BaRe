package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.cloud.connect.BoxSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.OneDriveSignInActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.contributor.ContributorRegActivity;
import org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity;
import org.swiftapps.swiftbackup.locale.LocaleActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.conversationsview.ConversationsActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class z20 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ z20(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                return ((AppsConfigRunActivity) il0Var).getDefaultViewModelCreationExtras();
            case 1:
                return ((BoxSignInActivity) il0Var).getDefaultViewModelCreationExtras();
            case 2:
                return ((CloudDiagnosticsActivity) il0Var).getViewModelStore();
            case 3:
                return ((ConfigEditActivity) il0Var).getDefaultViewModelCreationExtras();
            case 4:
                return ((ContributorRegActivity) il0Var).getViewModelStore();
            case 5:
                return ((ConversationsActivity) il0Var).getDefaultViewModelCreationExtras();
            case 6:
                return ((CsActivity) il0Var).getViewModelStore();
            case 7:
                return ((GmsSignInActivity) il0Var).getDefaultViewModelCreationExtras();
            case 8:
                return ((LabelEditActivity) il0Var).getViewModelStore();
            case XmlPullParser.COMMENT /* 9 */:
                return ((LocaleActivity) il0Var).getDefaultViewModelProviderFactory();
            case 10:
                return ((MegaSignInActivity) il0Var).getDefaultViewModelProviderFactory();
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return ((MessagesBackupRestoreActivity) il0Var).getViewModelStore();
            case 12:
                return ((MessagesDashActivity) il0Var).getDefaultViewModelCreationExtras();
            case 13:
                return ((fq5) il0Var).getDefaultViewModelProviderFactory();
            case 14:
                return ((OneDriveSignInActivity) il0Var).getDefaultViewModelCreationExtras();
            case 15:
                return ((PremiumActivity) il0Var).getDefaultViewModelCreationExtras();
            default:
                return ((ScheduleLabelsSelectActivity) il0Var).getViewModelStore();
        }
    }
}
