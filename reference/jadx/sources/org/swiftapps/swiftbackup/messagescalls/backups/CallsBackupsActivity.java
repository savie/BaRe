package org.swiftapps.swiftbackup.messagescalls.backups;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import defpackage.bk;
import defpackage.ck;
import defpackage.dk;
import defpackage.ek;
import defpackage.gv7;
import defpackage.hj;
import defpackage.ix0;
import defpackage.l90;
import defpackage.nc8;
import defpackage.ni7;
import defpackage.o01;
import defpackage.ph6;
import defpackage.sz8;
import defpackage.u10;
import defpackage.uf;
import defpackage.v01;
import defpackage.vf;
import defpackage.wf;
import defpackage.x01;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class CallsBackupsActivity extends x01 {
    public static final /* synthetic */ int T = 0;
    public final l90 P = new l90(ph6.a(v01.class), new vf(this, 2), new uf(this, 4), new wf(this, 1));
    public final gv7 Q = new gv7(new ck(this, 10));
    public final gv7 R = new gv7(new dk(this, 12));
    public final gv7 S = new gv7(new ek(this, 12));

    @Override // defpackage.x01
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final v01 U() {
        return (v01) this.P.getValue();
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        gv7 gv7Var = this.Q;
        setContentView(((ni7) gv7Var.getValue()).a);
        setSupportActionBar((Toolbar) ((ix0) ((ni7) gv7Var.getValue()).b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        int i = 1;
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.e0(a0().g ? R.string.cloud_backups : R.string.device_backups);
        }
        sz8.b((QuickRecyclerView) this.S.getValue(), 7);
        U().e.e(this, new o01(i, new u10(this, i)));
        a0().f.e(this, new o01(0, new hj(this, 5)));
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_smscalls_backups, menu);
        MenuItem menuItemFindItem = menu.findItem(R.id.action_delete);
        if (menuItemFindItem != null) {
            Drawable icon = menuItemFindItem.getIcon();
            icon.getClass();
            int iR = sz8.r(this);
            Drawable drawableMutate = icon.mutate();
            drawableMutate.getClass();
            drawableMutate.setTint(iR);
            menuItemFindItem.setIcon(drawableMutate);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() == R.id.action_delete) {
            Const.K(this, R.string.delete_all, new bk(this, 9), null);
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
