package org.swiftapps.swiftbackup.walls;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import defpackage.c05;
import defpackage.cv;
import defpackage.dv;
import defpackage.e7;
import defpackage.f7;
import defpackage.gv7;
import defpackage.ix0;
import defpackage.l90;
import defpackage.mo8;
import defpackage.nc8;
import defpackage.o20;
import defpackage.o30;
import defpackage.oo8;
import defpackage.ox;
import defpackage.p30;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.q30;
import defpackage.qp8;
import defpackage.qv5;
import defpackage.rp8;
import defpackage.sa1;
import defpackage.sp8;
import defpackage.sz8;
import defpackage.to5;
import defpackage.tp8;
import defpackage.xj1;
import defpackage.xq;
import defpackage.y2;
import defpackage.yi5;
import defpackage.zn4;
import java.util.Arrays;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class WallsManageActivity extends oo8 {
    public static final /* synthetic */ int S = 0;
    public final l90 P;
    public final gv7 Q = new gv7(new yi5(this, 10));
    public mo8 R;

    public WallsManageActivity() {
        int i = 10;
        this.P = new l90(ph6.a(tp8.class), new p30(this, i), new o30(this, 12), new q30(this, i));
    }

    @Override // defpackage.oo8
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final tp8 U() {
        return (tp8) this.P.getValue();
    }

    public final void Y(int i) {
        mo8 mo8Var = this.R;
        if (mo8Var == null) {
            pe4.F("mAdapter");
            throw null;
        }
        List listL = mo8Var.l();
        int i2 = 14;
        if (listL.isEmpty()) {
            String string = getString(R.string.select_some_items);
            string.getClass();
            zn4 zn4Var = zn4.a;
            zn4.e(new cv(i2, this, string));
            return;
        }
        if (i == R.id.action_delete) {
            Const.K(this, R.string.delete_backup, new y2(17, this, listL), null);
        } else if (i == R.id.action_download_all) {
            sa1.R(this, null, new o20(i2, this, listL), 1);
        } else if (i == R.id.action_sync) {
            sa1.R(this, null, new xq(this, listL), 1);
        }
    }

    public final void Z(boolean z, boolean z2) {
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            if (!z2) {
                supportActionBar.e0(z ? R.string.cloud_backups : R.string.device_backups);
                return;
            }
            mo8 mo8Var = this.R;
            if (mo8Var == null) {
                pe4.F("mAdapter");
                throw null;
            }
            Integer numValueOf = Integer.valueOf(mo8Var.k());
            mo8 mo8Var2 = this.R;
            if (mo8Var2 != null) {
                supportActionBar.f0(String.format("%s/%s", Arrays.copyOf(new Object[]{numValueOf, Integer.valueOf(mo8Var2.b())}, 2)));
            } else {
                pe4.F("mAdapter");
                throw null;
            }
        }
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        gv7 gv7Var = this.Q;
        setContentView(((rp8) gv7Var.getValue()).a);
        tp8 tp8VarA0 = a0();
        int i = 0;
        boolean booleanExtra = getIntent().getBooleanExtra("EXTRA_CLOUD_MODE", false);
        int i2 = 1;
        if (!tp8VarA0.g) {
            tp8VarA0.g = true;
            tp8VarA0.h = booleanExtra;
            dv dvVar = booleanExtra ? xj1.g : c05.g;
            tp8VarA0.i = dvVar;
            if (dvVar == null) {
                pe4.F("repo");
                throw null;
            }
            dvVar.p(tp8VarA0.j);
            sp8 sp8Var = new sp8(tp8VarA0);
            tp8VarA0.j = sp8Var;
            dv dvVar2 = tp8VarA0.i;
            if (dvVar2 == null) {
                pe4.F("repo");
                throw null;
            }
            dv.i(dvVar2, false, sp8Var, false, false, 12);
        }
        L(false, new to5(this, 12));
        setSupportActionBar((Toolbar) ((ix0) ((rp8) gv7Var.getValue()).b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        sz8.b(((rp8) gv7Var.getValue()).c, 7);
        ((rp8) gv7Var.getValue()).c.setGridLayoutManager(4);
        mo8 mo8Var = new mo8(this, true);
        mo8Var.h = new e7(this, 28);
        mo8Var.g = new f7(this, 7);
        this.R = mo8Var;
        QuickRecyclerView quickRecyclerView = ((rp8) gv7Var.getValue()).c;
        mo8 mo8Var2 = this.R;
        if (mo8Var2 == null) {
            pe4.F("mAdapter");
            throw null;
        }
        quickRecyclerView.setAdapter(mo8Var2);
        Z(a0().h, false);
        super.W();
        a0().k.e(this, new qv5(new qp8(this, i), i2));
        a0().l.e(this, new qv5(new ox(this, 25), i2));
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        mo8 mo8Var = this.R;
        if (mo8Var == null) {
            pe4.F("mAdapter");
            throw null;
        }
        if (mo8Var.e.c) {
            getMenuInflater().inflate(R.menu.menu_walls_explore, menu);
            menu.findItem(R.id.action_download_all).setVisible(a0().h);
            menu.findItem(R.id.action_sync).setVisible(!a0().h);
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
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_select_all) {
            mo8 mo8Var = this.R;
            if (mo8Var == null) {
                pe4.F("mAdapter");
                throw null;
            }
            mo8Var.s(!mo8Var.p());
        } else if (itemId == R.id.action_delete || itemId == R.id.action_download_all || itemId == R.id.action_sync) {
            Y(itemId);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        mo8 mo8Var = this.R;
        if (mo8Var == null) {
            pe4.F("mAdapter");
            throw null;
        }
        a0().k.k(mo8Var.e);
    }
}
