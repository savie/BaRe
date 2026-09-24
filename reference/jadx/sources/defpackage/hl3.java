package defpackage;

import android.content.Intent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.settings.SettingsActivity;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hl3 implements xc5 {
    public final /* synthetic */ FolderDetailActivity a;

    public hl3(FolderDetailActivity folderDetailActivity) {
        this.a = folderDetailActivity;
    }

    @Override // defpackage.xc5
    public final boolean a(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        FolderDetailActivity folderDetailActivity = this.a;
        if (itemId == R.id.action_edit_folder_setup) {
            int i = FolderEditActivity.h0;
            Intent intentPutExtra = new Intent(folderDetailActivity, (Class<?>) FolderEditActivity.class).putExtra("extra_folder_item", folderDetailActivity.U().k());
            intentPutExtra.getClass();
            folderDetailActivity.startActivityForResult(intentPutExtra, 4988);
            return true;
        }
        if (itemId == R.id.action_delete_folder_setup) {
            int i2 = FolderDetailActivity.Z;
            s35 s35Var = new s35(folderDetailActivity, R.style.M3AlertDialogTheme, new hv1(folderDetailActivity, R.style.M3AlertDialogTheme), null);
            s35Var.v(R.string.delete_folder_setup);
            s35Var.n(R.string.sure_to_proceed);
            s35Var.s(R.string.yes, new iq1(folderDetailActivity, 3));
            s35Var.q(R.string.no, null);
            s35Var.m();
            return true;
        }
        if (itemId == R.id.action_folder_settings) {
            int i3 = SettingsDetailActivity.R;
            String string = folderDetailActivity.getString(R.string.folder_backup_settings);
            string.getClass();
            jb9.g0(folderDetailActivity, 8, string);
            return true;
        }
        if (itemId != R.id.action_settings) {
            return true;
        }
        int i4 = SettingsActivity.Z;
        bb9.I(folderDetailActivity);
        return true;
    }

    @Override // defpackage.xc5
    public final void c(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        menuInflater.inflate(R.menu.menu_folder_detail_activity, menu);
        MenuItem menuItemFindItem = menu.findItem(R.id.action_delete_folder_setup);
        if (menuItemFindItem != null) {
            menuItemFindItem.setIconTintList(sz8.h0(sz8.r(this.a)));
        }
    }

    @Override // defpackage.xc5
    public final void d(Menu menu) {
        menu.getClass();
        MenuItem menuItemFindItem = menu.findItem(R.id.action_delete_folder_setup);
        if (menuItemFindItem != null) {
            menuItemFindItem.setVisible(this.a.W);
        }
    }
}
