package org.swiftapps.swiftbackup.blacklist;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import defpackage.bs0;
import defpackage.ej;
import defpackage.gl0;
import defpackage.gv7;
import defpackage.hj;
import defpackage.hv1;
import defpackage.il0;
import defpackage.ix0;
import defpackage.kf;
import defpackage.l90;
import defpackage.lf;
import defpackage.mf;
import defpackage.nc8;
import defpackage.nf;
import defpackage.ox;
import defpackage.ph6;
import defpackage.q30;
import defpackage.qr0;
import defpackage.rr0;
import defpackage.rs0;
import defpackage.s35;
import defpackage.sz8;
import defpackage.uf;
import defpackage.ur0;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class BlacklistActivity extends il0 {
    public static final /* synthetic */ int P = 0;
    public final l90 K = new l90(ph6.a(rs0.class), new gl0(this, 1), new q30(this, 2), new uf(this, 2));
    public final gv7 L = new gv7(new kf(this, 12));
    public final gv7 M;
    public final gv7 N;
    public Toast O;

    public BlacklistActivity() {
        int i = 10;
        this.M = new gv7(new lf(this, i));
        this.N = new gv7(new ej(this, i));
    }

    public final qr0 N() {
        return (qr0) this.L.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public final rs0 U() {
        return (rs0) this.K.getValue();
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(N().a);
        setSupportActionBar((Toolbar) ((ix0) N().b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        gv7 gv7Var = this.N;
        sz8.b((RecyclerView) gv7Var.getValue(), 7);
        ((RecyclerView) gv7Var.getValue()).setLayoutManager(new PreCachingLinearLayoutManager(this));
        ((RecyclerView) gv7Var.getValue()).setAdapter((bs0) this.M.getValue());
        N().c.d.setImageResource(R.drawable.ic_settings_block_filled);
        N().c.e.setText(R.string.blacklist_apps_msg);
        MaterialButton materialButton = N().c.b;
        materialButton.setIconResource(R.drawable.ic_plus);
        materialButton.setText(R.string.add_apps);
        int i = 3;
        materialButton.setOnClickListener(new mf(this, i));
        FloatingActionButton floatingActionButton = N().d;
        sz8.a(floatingActionButton);
        floatingActionButton.setOnClickListener(new nf(this, 2));
        int i2 = 0;
        U().f.e(this, new ur0(i2, new hj(this, 4)));
        U().g.e(this, new ur0(i2, new ox(this, i)));
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        MenuItem menuItemFindItem;
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_blacklist_apps, menu);
        if (((bs0) this.M.getValue()).e.a.isEmpty() && (menuItemFindItem = menu.findItem(R.id.action_clear)) != null) {
            menuItemFindItem.setVisible(false);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() == R.id.action_clear) {
            if (((bs0) this.M.getValue()).b() == 0) {
                Const.L();
                return false;
            }
            s35 s35Var = new s35(this, R.style.M3AlertDialogTheme, new hv1(this, R.style.M3AlertDialogTheme), null);
            s35Var.v(R.string.clear_all);
            s35Var.n(R.string.sure_to_proceed);
            s35Var.s(R.string.yes, new rr0());
            s35Var.q(R.string.no, null);
            s35Var.m();
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
