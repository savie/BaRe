package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.bareapps.barebackup.appconfigs.list.ConfigListActivity;
import com.bareapps.barebackup.appslist.ui.list.AppListActivity;
import com.bareapps.barebackup.appslist.ui.listbatch.AppsBatchActivity;
import com.bareapps.barebackup.cloud.connect.NoGmsSignInActivity;
import com.bareapps.barebackup.cloud.connect.common.CloudConnectActivity;
import com.bareapps.barebackup.cloud.orphans.CloudOrphanCleanerActivity;
import com.bareapps.barebackup.folders.ui.FolderEditActivity;
import com.bareapps.barebackup.home.HomeActivity;
import com.bareapps.barebackup.home.search.HomeSearchActivity;
import com.bareapps.barebackup.messagescalls.conversationsview.ChatActivity;
import com.bareapps.barebackup.notice.NoticeViewActivity;
import com.bareapps.barebackup.settings.appvisibility.AppVisibilityDiagnosticsActivity;
import com.bareapps.barebackup.slog.SLogActivity;
import com.bareapps.barebackup.wifi.WifiActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ls implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ ls(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                return ((AppListActivity) il0Var).getDefaultViewModelProviderFactory();
            case 1:
                return ((AppVisibilityDiagnosticsActivity) il0Var).getDefaultViewModelProviderFactory();
            case 2:
                return ((AppsBatchActivity) il0Var).getViewModelStore();
            case 3:
                return ((ChatActivity) il0Var).getDefaultViewModelCreationExtras();
            case 4:
                return ((CloudConnectActivity) il0Var).getDefaultViewModelProviderFactory();
            case 5:
                return ((CloudOrphanCleanerActivity) il0Var).getDefaultViewModelProviderFactory();
            case 6:
                return ((ConfigListActivity) il0Var).getDefaultViewModelProviderFactory();
            case 7:
                return ((FolderEditActivity) il0Var).getDefaultViewModelCreationExtras();
            case 8:
                return ((HomeActivity) il0Var).getViewModelStore();
            case XmlPullParser.COMMENT /* 9 */:
                return ((HomeSearchActivity) il0Var).getDefaultViewModelCreationExtras();
            case 10:
                return ((NoGmsSignInActivity) il0Var).getViewModelStore();
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return ((NoticeViewActivity) il0Var).getViewModelStore();
            case 12:
                return ((SLogActivity) il0Var).getViewModelStore();
            default:
                return ((WifiActivity) il0Var).getDefaultViewModelCreationExtras();
        }
    }
}
