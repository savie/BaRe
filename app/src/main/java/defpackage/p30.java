package defpackage;

import org.swiftapps.swiftbackup.appsquickactions.AppsQuickActionsActivity;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.PCloudSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.TeraBoxSignInActivity;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.locale.LocaleActivity;
import org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;
import org.swiftapps.swiftbackup.password.PasswordStrategyActivity;
import org.swiftapps.swiftbackup.walls.WallsManageActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class p30 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ p30(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                return ((AppsQuickActionsActivity) il0Var).getViewModelStore();
            case 1:
                return ((CallsDashActivity) il0Var).getViewModelStore();
            case 2:
                return ((IntroActivity) il0Var).getDefaultViewModelProviderFactory();
            case 3:
                return ((LocaleActivity) il0Var).getDefaultViewModelCreationExtras();
            case 4:
                return ((MegaSignInActivity) il0Var).getDefaultViewModelCreationExtras();
            case 5:
                return ((MessagesBackupsActivity) il0Var).getDefaultViewModelProviderFactory();
            case 6:
                return ((fq5) il0Var).getDefaultViewModelCreationExtras();
            case 7:
                return ((PCloudSignInActivity) il0Var).getViewModelStore();
            case 8:
                return ((PasswordStrategyActivity) il0Var).getDefaultViewModelProviderFactory();
            case XmlPullParser.COMMENT /* 9 */:
                return ((TeraBoxSignInActivity) il0Var).getDefaultViewModelProviderFactory();
            default:
                return ((WallsManageActivity) il0Var).getViewModelStore();
        }
    }
}
