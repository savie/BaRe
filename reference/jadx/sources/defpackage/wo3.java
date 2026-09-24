package defpackage;

import android.content.DialogInterface;
import android.content.Intent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.settings.SettingsActivity;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wo3 implements xc5 {
    public final /* synthetic */ FoldersDashActivity a;

    public wo3(FoldersDashActivity foldersDashActivity) {
        this.a = foldersDashActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.xc5
    public final boolean a(MenuItem menuItem) {
        np3 np3VarM;
        ex6 ex6Var;
        fm7 fm7Var;
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        FoldersDashActivity foldersDashActivity = this.a;
        if (itemId == R.id.action_new_folder_setup) {
            foldersDashActivity.startActivityForResult(new Intent(foldersDashActivity, (Class<?>) FolderEditActivity.class), 4987);
        } else if (itemId == R.id.action_sort) {
            kp3 kp3VarU = FoldersDashActivity.U(foldersDashActivity);
            List list = (kp3VarU == null || (np3VarM = kp3VarU.m()) == null || (ex6Var = np3VarM.h) == null || (fm7Var = (fm7) ex6Var.d()) == null) ? null : fm7Var.a;
            if (list == null || list.isEmpty()) {
                Const.L();
            } else {
                final vo3 vo3Var = new vo3(foldersDashActivity, 0);
                final jx2 entries = xk3.getEntries();
                int iIndexOf = ((kx2) xk3.getEntries()).indexOf(zm5.q().a);
                final jh6 jh6Var = new jh6();
                jh6Var.a = iIndexOf;
                s35 s35Var = new s35(foldersDashActivity, R.style.M3AlertDialogTheme, new hv1(foldersDashActivity, R.style.M3AlertDialogTheme), null);
                s35Var.v(R.string.sort);
                ArrayList arrayList = new ArrayList(hl1.G0(entries, 10));
                Iterator it = ((z3) entries).iterator();
                while (true) {
                    w3 w3Var = (w3) it;
                    if (!w3Var.hasNext()) {
                        break;
                    }
                    arrayList.add(((xk3) w3Var.next()).displayString());
                }
                s35Var.u((CharSequence[]) arrayList.toArray(new String[0]), iIndexOf, new f21(jh6Var, 3));
                s35Var.s(R.string.descending, new ib1(1, entries, jh6Var, vo3Var));
                s35Var.q(R.string.ascending, new DialogInterface.OnClickListener() { // from class: tk3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        vo3Var.invoke((xk3) ((kx2) entries).get(jh6Var.a), vk3.Asc);
                    }
                });
                s35Var.m();
            }
        } else if (itemId == R.id.action_folder_settings) {
            int i = SettingsDetailActivity.R;
            String string = foldersDashActivity.getString(R.string.folder_backup_settings);
            string.getClass();
            jb9.g0(foldersDashActivity, 8, string);
        } else if (itemId == R.id.action_settings) {
            int i2 = SettingsActivity.Z;
            bb9.I(foldersDashActivity);
        }
        return true;
    }

    @Override // defpackage.xc5
    public final void c(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        menuInflater.inflate(R.menu.menu_folder_dash_activity, menu);
    }
}
