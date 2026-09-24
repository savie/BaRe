package defpackage;

import org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.messagescalls.conversationsview.ChatActivity;
import org.swiftapps.swiftbackup.walls.WallApplyActivity;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;
import org.swiftapps.swiftbackup.wifi.WifiActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class j51 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ j51(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                return ((ChatActivity) il0Var).getDefaultViewModelProviderFactory();
            case 1:
                return ((ConfigSettingsActivity) il0Var).getViewModelStore();
            case 2:
                return ((FolderEditActivity) il0Var).getDefaultViewModelProviderFactory();
            case 3:
                return ((FolderPickerActivity) il0Var).getDefaultViewModelCreationExtras();
            case 4:
                return ((FoldersDashActivity) il0Var).getViewModelStore();
            case 5:
                return ((HomeSearchActivity) il0Var).getDefaultViewModelProviderFactory();
            case 6:
                return ((LabelsActivity) il0Var).getViewModelStore();
            case 7:
                return ((WallApplyActivity) il0Var).getDefaultViewModelCreationExtras();
            case 8:
                return ((WallsDashActivity) il0Var).getDefaultViewModelCreationExtras();
            default:
                return ((WifiActivity) il0Var).getDefaultViewModelProviderFactory();
        }
    }
}
