package defpackage;

import org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.cloud.connect.NoGmsSignInActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.messagescalls.conversationsview.ChatActivity;
import org.swiftapps.swiftbackup.notice.NoticeViewActivity;
import org.swiftapps.swiftbackup.slog.SLogActivity;
import org.swiftapps.swiftbackup.wifi.WifiActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f20 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ f20(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                return ((AppsBatchActivity) il0Var).getDefaultViewModelProviderFactory();
            case 1:
                return ((ChatActivity) il0Var).getViewModelStore();
            case 2:
                return ((ConfigSettingsActivity) il0Var).getDefaultViewModelCreationExtras();
            case 3:
                return ((FolderEditActivity) il0Var).getViewModelStore();
            case 4:
                return ((FoldersDashActivity) il0Var).getDefaultViewModelCreationExtras();
            case 5:
                return ((HomeActivity) il0Var).getDefaultViewModelProviderFactory();
            case 6:
                return ((HomeSearchActivity) il0Var).getViewModelStore();
            case 7:
                return ((LabelsActivity) il0Var).getDefaultViewModelCreationExtras();
            case 8:
                return ((NoGmsSignInActivity) il0Var).getDefaultViewModelProviderFactory();
            case XmlPullParser.COMMENT /* 9 */:
                return ((NoticeViewActivity) il0Var).getDefaultViewModelProviderFactory();
            case 10:
                return ((SLogActivity) il0Var).getDefaultViewModelProviderFactory();
            default:
                return ((WifiActivity) il0Var).getViewModelStore();
        }
    }
}
