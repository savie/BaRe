package defpackage;

import android.content.Intent;
import android.view.MenuItem;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.manage.ManageSpaceActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gp3 implements g36, at5, ig2 {
    public final /* synthetic */ Object a;
    public final /* synthetic */ Object b;

    public /* synthetic */ gp3(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    @Override // defpackage.ig2
    public void c(ga6 ga6Var) {
        ig2 ig2Var = (ig2) this.a;
        ig2 ig2Var2 = (ig2) this.b;
        ig2Var.c(ga6Var);
        ig2Var2.c(ga6Var);
    }

    @Override // defpackage.at5
    public void d(Object obj) {
        ManageSpaceActivity manageSpaceActivity = (ManageSpaceActivity) this.a;
        gv7 gv7Var = manageSpaceActivity.N;
        ry5 ry5Var = (ry5) this.b;
        List list = (List) obj;
        int i = ManageSpaceActivity.O;
        if (manageSpaceActivity.isFinishing()) {
            return;
        }
        ((t55) gv7Var.getValue()).j = new gi4(1, manageSpaceActivity, ry5Var);
        ((t55) gv7Var.getValue()).w(new fm7(list, (Set) null, false, (String) null, 30), false);
        sz8.W((CircularProgressIndicator) manageSpaceActivity.L.getValue());
        sz8.c0((RecyclerView) manageSpaceActivity.M.getValue());
    }

    @Override // defpackage.g36
    public boolean onMenuItemClick(MenuItem menuItem) {
        kp3 kp3Var = (kp3) this.a;
        zk3 zk3Var = (zk3) this.b;
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_copy_folder_setup_to_local) {
            zo3 zo3VarW = kp3Var.i().V();
            FolderItem folderItem = zk3Var.a;
            folderItem.getClass();
            zn4.c(new l30(8, zo3VarW, folderItem));
            return true;
        }
        if (itemId == R.id.action_edit_folder_setup) {
            int i = FolderEditActivity.h0;
            FoldersDashActivity foldersDashActivityI = kp3Var.i();
            FolderItem folderItem2 = zk3Var.a;
            folderItem2.getClass();
            Intent intentPutExtra = new Intent(foldersDashActivityI, (Class<?>) FolderEditActivity.class).putExtra("extra_folder_item", folderItem2);
            intentPutExtra.getClass();
            foldersDashActivityI.startActivityForResult(intentPutExtra, 4988);
            return true;
        }
        if (itemId == R.id.action_delete_folder_setup) {
            zo3 zo3VarW2 = kp3Var.i().V();
            FolderItem folderItem3 = zk3Var.a;
            folderItem3.getClass();
            zn4.c(new d11(10, zo3VarW2, folderItem3));
            return true;
        }
        if (itemId == R.id.action_delete_local_backup) {
            FoldersDashActivity foldersDashActivityI2 = kp3Var.i();
            s35 s35Var = new s35(foldersDashActivityI2, R.style.M3AlertDialogTheme, new hv1(foldersDashActivityI2, R.style.M3AlertDialogTheme), null);
            s35Var.v(R.string.delete_local_backup);
            s35Var.n(R.string.delete_local_backup_confirmation);
            s35Var.s(R.string.delete_backup, new fp3(0, kp3Var, zk3Var));
            s35Var.q(R.string.cancel, null);
            s35Var.m();
            return true;
        }
        if (itemId != R.id.action_delete_cloud_backup) {
            return true;
        }
        FoldersDashActivity foldersDashActivityI3 = kp3Var.i();
        s35 s35Var2 = new s35(foldersDashActivityI3, R.style.M3AlertDialogTheme, new hv1(foldersDashActivityI3, R.style.M3AlertDialogTheme), null);
        s35Var2.v(R.string.delete_cloud_backup);
        s35Var2.n(R.string.delete_cloud_backup_confirmation);
        s35Var2.s(R.string.delete_backup, new b52(2, kp3Var, zk3Var));
        s35Var2.q(R.string.cancel, null);
        s35Var2.m();
        return true;
    }
}
