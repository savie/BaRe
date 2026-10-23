package defpackage;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.View;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class x01 extends sa1 {
    public x01() {
        ph6.a(b11.class);
    }

    public abstract b11 U();

    public final void V(rz0 rz0Var) {
        rz0Var.getClass();
        q63 localFile = rz0Var.getLocalFile();
        if (rz0Var.isLocalItem()) {
            if (localFile.j()) {
                g00 g00Var = g00.a;
                if (g00.r().hasSystemFeature("android.hardware.telephony")) {
                    Intent intentPutExtra = new Intent(this, (Class<?>) CallsBackupRestoreActivity.class).putExtra("EXTRA_BACKUP_FILE_PATH", localFile.v());
                    intentPutExtra.getClass();
                    startActivity(intentPutExtra);
                    return;
                } else {
                    SwiftApp.Companion companion = SwiftApp.d;
                    Context contextC = SwiftApp.Companion.c();
                    zn4 zn4Var = zn4.a;
                    dj7.y(contextC, "Feature not supported on this device");
                    return;
                }
            }
            return;
        }
        if (rz0Var.isCloudItem()) {
            if (localFile.j()) {
                long jA = localFile.A();
                if (jA == rz0Var.getRemoteFileSize()) {
                    g00 g00Var2 = g00.a;
                    if (g00.r().hasSystemFeature("android.hardware.telephony")) {
                        Intent intentPutExtra2 = new Intent(this, (Class<?>) CallsBackupRestoreActivity.class).putExtra("EXTRA_BACKUP_FILE_PATH", localFile.v());
                        intentPutExtra2.getClass();
                        startActivity(intentPutExtra2);
                        return;
                    } else {
                        SwiftApp.Companion companion2 = SwiftApp.d;
                        Context contextC2 = SwiftApp.Companion.c();
                        zn4 zn4Var2 = zn4.a;
                        dj7.y(contextC2, "Feature not supported on this device");
                        return;
                    }
                }
                p93 p93Var = p93.a;
                vr6.e$default(vr6.INSTANCE, r(), eq3.l("Cloud item file size mismatch (local=", p93.c(Long.valueOf(jA)), ", cloud=", p93.c(Long.valueOf(rz0Var.getRemoteFileSize())), ")"), null, 4, null);
            }
            if (Const.d(this)) {
                tb1 tb1Var = tb1.a;
                if (qb1.m()) {
                    b11 b11VarU = U();
                    b11VarU.getClass();
                    zn4 zn4Var3 = zn4.a;
                    zn4.b(null, new us(b11VarU, rz0Var, null, 2));
                }
            }
        }
    }

    public final void W(View view, rz0 rz0Var) {
        view.getClass();
        rz0Var.getClass();
        u45 u45Var = new u45(this, view, 12);
        u45Var.f(R.menu.menu_popup_sms_backup_item);
        fc5 fc5Var = (fc5) u45Var.c;
        fc5Var.findItem(R.id.action_sync_sms_backup).setVisible(!rz0Var.isCloudItem());
        MenuItem menuItemFindItem = fc5Var.findItem(R.id.action_delete_sms_backup);
        if (menuItemFindItem != null) {
            Drawable icon = menuItemFindItem.getIcon();
            icon.getClass();
            int iR = sz8.r(this);
            Drawable drawableMutate = icon.mutate();
            drawableMutate.getClass();
            drawableMutate.setTint(iR);
            menuItemFindItem.setIcon(drawableMutate);
        }
        u45Var.e = new kj0(this, rz0Var);
        u45Var.j();
    }
}
