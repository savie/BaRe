package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import com.bareapps.barebackup.appconfigs.edit.ConfigEditActivity;
import com.bareapps.barebackup.appconfigs.list.ConfigListActivity;
import com.bareapps.barebackup.appslist.ui.list.AppListActivity;
import com.bareapps.barebackup.appslist.ui.listbatch.AppsBatchActivity;
import com.bareapps.barebackup.appslist.ui.listconfig.AppsConfigRunActivity;
import com.bareapps.barebackup.cloud.connect.BoxSignInActivity;
import com.bareapps.barebackup.cloud.connect.GmsSignInActivity;
import com.bareapps.barebackup.cloud.connect.NoGmsSignInActivity;
import com.bareapps.barebackup.cloud.connect.OneDriveSignInActivity;
import com.bareapps.barebackup.cloud.connect.common.CloudConnectActivity;
import com.bareapps.barebackup.cloud.orphans.CloudOrphanCleanerActivity;
import com.bareapps.barebackup.home.HomeActivity;
import com.bareapps.barebackup.messagescalls.conversationsview.ConversationsActivity;
import com.bareapps.barebackup.messagescalls.dash.MessagesDashActivity;
import com.bareapps.barebackup.notice.NoticeViewActivity;
import com.bareapps.barebackup.premium.PremiumActivity;
import com.bareapps.barebackup.settings.appvisibility.AppVisibilityDiagnosticsActivity;
import com.bareapps.barebackup.slog.SLogActivity;
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
