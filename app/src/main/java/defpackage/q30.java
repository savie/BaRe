package defpackage;

import org.swiftapps.swiftbackup.appsquickactions.AppsQuickActionsActivity;
import org.swiftapps.swiftbackup.blacklist.BlacklistActivity;
import org.swiftapps.swiftbackup.cloud.connect.PCloudSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.TeraBoxSignInActivity;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;
import org.swiftapps.swiftbackup.password.PasswordStrategyActivity;
import org.swiftapps.swiftbackup.settings.MultipleBackupsActivity;
import org.swiftapps.swiftbackup.walls.WallsManageActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class q30 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ q30(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                return ((AppsQuickActionsActivity) il0Var).getDefaultViewModelCreationExtras();
            case 1:
                return il0Var.getDefaultViewModelProviderFactory();
            case 2:
                return ((BlacklistActivity) il0Var).getDefaultViewModelProviderFactory();
            case 3:
                return ((CallsDashActivity) il0Var).getDefaultViewModelCreationExtras();
            case 4:
                return ((IntroActivity) il0Var).getViewModelStore();
            case 5:
                return ((MessagesBackupsActivity) il0Var).getViewModelStore();
            case 6:
                return ((MultipleBackupsActivity) il0Var).getDefaultViewModelProviderFactory();
            case 7:
                return ((PCloudSignInActivity) il0Var).getDefaultViewModelCreationExtras();
            case 8:
                return ((PasswordStrategyActivity) il0Var).getViewModelStore();
            case XmlPullParser.COMMENT /* 9 */:
                return ((TeraBoxSignInActivity) il0Var).getViewModelStore();
            default:
                return ((WallsManageActivity) il0Var).getDefaultViewModelCreationExtras();
        }
    }
}
