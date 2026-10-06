package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.cloud.connect.BoxSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.NoGmsSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.OneDriveSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity;
import org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.messagescalls.conversationsview.ConversationsActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.notice.NoticeViewActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.settings.appvisibility.AppVisibilityDiagnosticsActivity;
import org.swiftapps.swiftbackup.slog.SLogActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ms implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ ms(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                return ((AppListActivity) il0Var).getViewModelStore();
            case 1:
                return ((AppVisibilityDiagnosticsActivity) il0Var).getViewModelStore();
            case 2:
                return ((AppsBatchActivity) il0Var).getDefaultViewModelCreationExtras();
            case 3:
                return ((AppsConfigRunActivity) il0Var).getDefaultViewModelProviderFactory();
            case 4:
                return ((BoxSignInActivity) il0Var).getDefaultViewModelProviderFactory();
            case 5:
                return ((CloudConnectActivity) il0Var).getViewModelStore();
            case 6:
                return ((CloudOrphanCleanerActivity) il0Var).getViewModelStore();
            case 7:
                return ((ConfigEditActivity) il0Var).getDefaultViewModelProviderFactory();
            case 8:
                return ((ConfigListActivity) il0Var).getViewModelStore();
            case XmlPullParser.COMMENT /* 9 */:
                return ((ConversationsActivity) il0Var).getDefaultViewModelProviderFactory();
            case 10:
                return ((GmsSignInActivity) il0Var).getDefaultViewModelProviderFactory();
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return ((HomeActivity) il0Var).getDefaultViewModelCreationExtras();
            case 12:
                return ((MessagesDashActivity) il0Var).getDefaultViewModelProviderFactory();
            case 13:
                return ((NoGmsSignInActivity) il0Var).getDefaultViewModelCreationExtras();
            case 14:
                return ((NoticeViewActivity) il0Var).getDefaultViewModelCreationExtras();
            case 15:
                return ((OneDriveSignInActivity) il0Var).getDefaultViewModelProviderFactory();
            case Argon2.V10 /* 16 */:
                return ((PremiumActivity) il0Var).getDefaultViewModelProviderFactory();
            default:
                return ((SLogActivity) il0Var).getDefaultViewModelCreationExtras();
        }
    }
}
