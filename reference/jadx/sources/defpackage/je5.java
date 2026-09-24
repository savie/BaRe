package defpackage;

import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.View;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class je5 extends sa1 {
    public je5() {
        ph6.a(me5.class);
    }

    public abstract me5 U();

    public final void V(vd5 vd5Var) {
        vd5Var.getClass();
        q63 localFile = vd5Var.getLocalFile();
        if (vd5Var.isLocalItem()) {
            if (localFile.j()) {
                U().e.k(new ke5(localFile));
                return;
            }
            return;
        }
        if (vd5Var.isCloudItem()) {
            if (localFile.j()) {
                long jA = localFile.A();
                Long remoteFileSize = vd5Var.getRemoteFileSize();
                if (remoteFileSize != null && jA == remoteFileSize.longValue()) {
                    U().e.k(new ke5(localFile));
                    return;
                } else {
                    p93 p93Var = p93.a;
                    vr6.e$default(vr6.INSTANCE, r(), eq3.l("Cloud item file size mismatch (local=", p93.c(Long.valueOf(jA)), ", cloud=", p93.c(vd5Var.getRemoteFileSize()), ")"), null, 4, null);
                }
            }
            if (Const.d(this)) {
                tb1 tb1Var = tb1.a;
                if (qb1.m()) {
                    me5 me5VarU = U();
                    me5VarU.getClass();
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new sf(me5VarU, vd5Var, null, 1));
                }
            }
        }
    }

    public final void W(View view, vd5 vd5Var) {
        view.getClass();
        vd5Var.getClass();
        u45 u45Var = new u45(this, view, 12);
        u45Var.f(R.menu.menu_popup_sms_backup_item);
        fc5 fc5Var = (fc5) u45Var.c;
        fc5Var.findItem(R.id.action_sync_sms_backup).setVisible(!vd5Var.isCloudItem());
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
        u45Var.e = new iq0(this, vd5Var);
        u45Var.j();
    }
}
