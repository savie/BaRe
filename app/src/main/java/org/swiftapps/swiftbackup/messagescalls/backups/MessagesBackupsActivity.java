package org.swiftapps.swiftbackup.messagescalls.backups;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import defpackage.ak;
import defpackage.d7;
import defpackage.gj;
import defpackage.gl0;
import defpackage.gv7;
import defpackage.he5;
import defpackage.hj;
import defpackage.hs4;
import defpackage.ix0;
import defpackage.je5;
import defpackage.l90;
import defpackage.nc8;
import defpackage.ni7;
import defpackage.p30;
import defpackage.ph6;
import defpackage.ps0;
import defpackage.q30;
import defpackage.qb5;
import defpackage.sz8;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class MessagesBackupsActivity extends je5 {
    public static final /* synthetic */ int T = 0;
    public final l90 P = new l90(ph6.a(he5.class), new q30(this, 5), new p30(this, 5), new gl0(this, 6));
    public final gv7 Q = new gv7(new gj(this, 29));
    public final gv7 R = new gv7(new ak(this, 26));
    public final gv7 S = new gv7(new qb5(this, 1));

    @Override // defpackage.je5
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final he5 V() {
        return (he5) this.P.getValue();
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
            supportActionBar.e0(U().g ? R.string.cloud_backups : R.string.device_backups);
        }
        sz8.b((QuickRecyclerView) this.S.getValue(), 7);
        V().e.e(this, new ps0(2, new hj(this, 19)));
        U().f.e(this, new ps0(i, new d7(this, 19)));
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
            Const.K(this, R.string.delete_all, new hs4(this, 4), null);
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
