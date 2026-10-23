package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.cloud.connect.NoGmsSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity;
import org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.messagescalls.conversationsview.ChatActivity;
import org.swiftapps.swiftbackup.notice.NoticeViewActivity;
import org.swiftapps.swiftbackup.settings.appvisibility.AppVisibilityDiagnosticsActivity;
import org.swiftapps.swiftbackup.slog.SLogActivity;
import org.swiftapps.swiftbackup.wifi.WifiActivity;
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
