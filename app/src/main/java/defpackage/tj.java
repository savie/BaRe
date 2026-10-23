package defpackage;

import android.view.MenuItem;
import java.io.Serializable;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.b;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class tj implements j90, g36 {
    public final /* synthetic */ Object a;
    public final /* synthetic */ Serializable b;
    public final /* synthetic */ Object c;

    public /* synthetic */ tj(Object obj, Serializable serializable, Object obj2) {
        this.a = obj;
        this.b = serializable;
        this.c = obj2;
    }

    @Override // defpackage.g36
    public boolean onMenuItemClick(MenuItem menuItem) {
        DetailActivity detailActivity = (DetailActivity) this.a;
        iu iuVar = (iu) this.b;
        ji jiVar = (ji) this.c;
        int i = DetailActivity.b0;
        int itemId = menuItem.getItemId();
        int i2 = 0;
        int i3 = 1;
        if (itemId == R.id.action_backup_local) {
            mk2 mk2VarA0 = detailActivity.a0();
            List listI = nc8.I(q05.DEVICE);
            iuVar.getClass();
            ji jiVar2 = mk2VarA0.e;
            if (jiVar2 == null) {
                pe4.F("app");
                throw null;
            }
            List listI2 = nc8.I(iuVar);
            boolean zW = z85.w();
            xp1 xp1VarR = z85.r();
            MultipleBackupStrategy.Companion.getClass();
            mk2VarA0.l(new hz(jiVar2, listI2, listI, null, null, zW, xp1VarR, b.c(), null), new ky7(2, 0));
            return true;
        }
        if (itemId == R.id.action_backup_cloud) {
            if (V.INSTANCE.getA()) {
                sa1.R(detailActivity, null, new cv(7, detailActivity, new h80(iuVar, nc8.I(q05.CLOUD))), 1);
                return true;
            }
            detailActivity.getClass();
            zn4 zn4Var = zn4.a;
            zn4.e(new b56(detailActivity, i2));
            return true;
        }
        int i4 = 8;
        if (itemId == R.id.action_backup_local_cloud) {
            if (V.INSTANCE.getA()) {
                sa1.R(detailActivity, null, new d11(i4, detailActivity, new h80(iuVar, fl1.A0(q05.DEVICE, q05.CLOUD))), 1);
                return true;
            }
            detailActivity.getClass();
            zn4 zn4Var2 = zn4.a;
            zn4.e(new b56(detailActivity, i2));
            return true;
        }
        if (itemId != R.id.action_delete) {
            if (itemId == R.id.action_share) {
                detailActivity.getClass();
                new nh(detailActivity).n(new xh(jiVar));
            }
            return true;
        }
        if (!mp6.g) {
            detailActivity.getClass();
            String string = detailActivity.getString(R.string.root_access_needed);
            String string2 = detailActivity.getString(R.string.feature_requires_root_access_message);
            string2.getClass();
            b05.l(detailActivity, string, string2, 8);
            return false;
        }
        detailActivity.getClass();
        s35 s35Var = new s35(detailActivity, R.style.M3AlertDialogTheme, new hv1(detailActivity, R.style.M3AlertDialogTheme), null);
        s35Var.v(R.string.delete);
        s35Var.n(R.string.sure_to_proceed);
        s35Var.s(R.string.yes, new jb1(detailActivity, iuVar, i3));
        s35Var.q(R.string.no, null);
        s35Var.m();
        return true;
    }

    @Override // defpackage.j90
    public void p(n58 n58Var, z80 z80Var) {
        lh6 lh6Var = (lh6) this.a;
        lh6 lh6Var2 = (lh6) this.b;
        CountDownLatch countDownLatch = (CountDownLatch) this.c;
        lh6Var.a = n58Var;
        lh6Var2.a = z80Var;
        countDownLatch.countDown();
    }
}
