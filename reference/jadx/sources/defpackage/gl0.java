package defpackage;

import org.swiftapps.swiftbackup.blacklist.BlacklistActivity;
import org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.TeraBoxSignInActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity;
import org.swiftapps.swiftbackup.password.PasswordStrategyActivity;
import org.swiftapps.swiftbackup.settings.MultipleBackupsActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gl0 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ gl0(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                return il0Var.getViewModelStore();
            case 1:
                return ((BlacklistActivity) il0Var).getViewModelStore();
            case 2:
                return ((CallsBackupRestoreActivity) il0Var).getDefaultViewModelProviderFactory();
            case 3:
                return ((FilenSignInActivity) il0Var).getDefaultViewModelProviderFactory();
            case 4:
                return ((FolderDetailActivity) il0Var).getDefaultViewModelProviderFactory();
            case 5:
                return ((IntroActivity) il0Var).getDefaultViewModelCreationExtras();
            case 6:
                return ((MessagesBackupsActivity) il0Var).getDefaultViewModelCreationExtras();
            case 7:
                return ((MultipleBackupsActivity) il0Var).getViewModelStore();
            case 8:
                return ((PasswordStrategyActivity) il0Var).getDefaultViewModelCreationExtras();
            case XmlPullParser.COMMENT /* 9 */:
                return ((StorageSwitchActivity) il0Var).getDefaultViewModelProviderFactory();
            default:
                return ((TeraBoxSignInActivity) il0Var).getDefaultViewModelCreationExtras();
        }
    }
}
