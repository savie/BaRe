package defpackage;

import com.bareapps.barebackup.appconfigs.settings.ConfigSettingsActivity;
import com.bareapps.barebackup.appslist.ui.labels.LabelsActivity;
import com.bareapps.barebackup.folders.ui.FolderEditActivity;
import com.bareapps.barebackup.folders.ui.FolderPickerActivity;
import com.bareapps.barebackup.folders.ui.FoldersDashActivity;
import com.bareapps.barebackup.home.search.HomeSearchActivity;
import com.bareapps.barebackup.messagescalls.conversationsview.ChatActivity;
import com.bareapps.barebackup.walls.WallApplyActivity;
import com.bareapps.barebackup.walls.WallsDashActivity;
import com.bareapps.barebackup.wifi.WifiActivity;

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
