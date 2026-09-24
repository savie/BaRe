package org.swiftapps.swiftbackup.appslist.ui.listconfig;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.CheckedTextView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.l4digital.fastscroll.FastScroller;
import defpackage.a30;
import defpackage.ah;
import defpackage.bh;
import defpackage.c7;
import defpackage.cv;
import defpackage.dt;
import defpackage.e7;
import defpackage.ek;
import defpackage.ex6;
import defpackage.f30;
import defpackage.f7;
import defpackage.fj;
import defpackage.fm7;
import defpackage.g7;
import defpackage.gv7;
import defpackage.hs;
import defpackage.jv1;
import defpackage.k3;
import defpackage.k30;
import defpackage.l90;
import defpackage.lm;
import defpackage.m30;
import defpackage.ms;
import defpackage.n30;
import defpackage.nc8;
import defpackage.ns;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.sq1;
import defpackage.sz8;
import defpackage.t20;
import defpackage.tf2;
import defpackage.vr6;
import defpackage.w20;
import defpackage.y20;
import defpackage.ym7;
import defpackage.z20;
import defpackage.zn4;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.settings.SettingsActivity;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;
import org.swiftapps.swiftbackup.views.SpeedyLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class AppsConfigRunActivity extends dt {
    public static final /* synthetic */ int m0 = 0;
    public k30 f0;
    public final gv7 h0;
    public final gv7 i0;
    public f30 j0;
    public Menu k0;
    public MenuItem l0;
    public final l90 d0 = new l90(ph6.a(n30.class), new ns(this, 2), new ms(this, 3), new z20(this, 0));
    public final gv7 e0 = new gv7(new fj(this, 10));
    public final gv7 g0 = new gv7(new ek(this, 9));

    public AppsConfigRunActivity() {
        int i = 9;
        this.h0 = new gv7(new ah(this, i));
        this.i0 = new gv7(new bh(this, i));
    }

    @Override // defpackage.dt
    public final void c0() {
        V();
    }

    public final RecyclerView g0() {
        return (RecyclerView) this.g0.getValue();
    }

    public final a30 h0() {
        return (a30) this.e0.getValue();
    }

    @Override // defpackage.dt
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final n30 V() {
        return (n30) this.d0.getValue();
    }

    public final void j0(boolean z) {
        MenuItem menuItem = this.l0;
        if (menuItem != null) {
            menuItem.setChecked(z);
        }
        Drawable drawableW = Const.w(this, z ? R.drawable.checkbox_marked : R.drawable.checkbox_blank_outline, sz8.z(this));
        MenuItem menuItem2 = this.l0;
        if (menuItem2 != null) {
            menuItem2.setIcon(drawableW);
        }
    }

    public final void k0() {
        Menu menu = this.k0;
        if (menu != null) {
            ym7 ym7Var = (ym7) V().j.d();
            if (ym7Var == null) {
                ym7Var = ym7.LOADING;
            }
            menu.setGroupVisible(R.id.grp_edit, ym7Var == ym7.DATA_RECEIVED);
            if (menu.hasVisibleItems()) {
                f30 f30Var = this.j0;
                if (f30Var != null) {
                    j0(f30Var.p());
                } else {
                    pe4.F("mAdapter");
                    throw null;
                }
            }
        }
    }

    @Override // defpackage.dt, defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        k30 k30Var;
        k30 k30Var2;
        super.onCreate(bundle);
        setContentView(h0().a);
        if (!V.INSTANCE.getA()) {
            vr6.e$default(vr6.INSTANCE, r(), "User not premium! Finishing.", null, 4, null);
            finish();
            return;
        }
        setSupportActionBar((Toolbar) ((tf2) h0().b.d).c);
        nc8 supportActionBar = getSupportActionBar();
        int i = 0;
        int i2 = 1;
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.b0(false);
        }
        Intent intent = getIntent();
        jv1 jv1Var = null;
        if (intent == null || (k30Var2 = (k30) intent.getParcelableExtra("extra_config_run_item")) == null) {
            k30Var = null;
        } else {
            this.f0 = k30Var2;
            k30Var = k30Var2;
        }
        int i3 = 2;
        int i4 = 4;
        if (k30Var != null) {
            vr6.i$default(vr6.INSTANCE, r(), k30Var.toString(), null, 4, null);
            tf2 tf2Var = (tf2) h0().b.d;
            ((CheckedTextView) tf2Var.f).setText(k30Var.c);
            TextView textView = (TextView) tf2Var.e;
            textView.setText(getString(R.string.loading));
            ((ConstraintLayout) tf2Var.d).setOnClickListener(new hs(this, i3));
            f30 f30Var = new f30(this, textView, new e7(this, 3), new k3(this, i4));
            f30Var.g = new f7(this, i2);
            this.j0 = f30Var;
            RecyclerView recyclerViewG0 = g0();
            sz8.b(recyclerViewG0, 7);
            recyclerViewG0.setLayoutManager(new SpeedyLinearLayoutManager(this));
            f30 f30Var2 = this.j0;
            if (f30Var2 == null) {
                pe4.F("mAdapter");
                throw null;
            }
            recyclerViewG0.setAdapter(f30Var2);
            recyclerViewG0.setHasFixedSize(true);
            recyclerViewG0.setItemViewCacheSize(4);
            FastScroller fastScroller = (FastScroller) this.h0.getValue();
            f30 f30Var3 = this.j0;
            if (f30Var3 == null) {
                pe4.F("mAdapter");
                throw null;
            }
            fastScroller.setSectionIndexer(f30Var3);
            fastScroller.d(g0());
            h0().d.d.setImageResource(R.drawable.ic_format_list_bulleted_type);
            h0().d.f.setText(R.string.list_is_empty);
            h0().d.e.setText(R.string.apps_empty_list_error);
            h0().d.b.setText(R.string.back);
            h0().d.b.setOnClickListener(new g7(this, 4));
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) this.i0.getValue();
            sz8.f0(extendedFloatingActionButton, g0(), false);
            k30 k30Var3 = this.f0;
            if (k30Var3 != null) {
                extendedFloatingActionButton.setOnClickListener(new t20(i, this, k30Var3));
                extendedFloatingActionButton.setText(k30Var.f);
                extendedFloatingActionButton.setIconResource(k30Var.k);
            }
            n30 n30VarV = V();
            if (!n30VarV.g) {
                n30VarV.g = true;
                n30VarV.h = k30Var;
                Config config = k30Var.b;
                if (sq1.a(config, true)) {
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new m30(n30VarV, k30Var, config, jv1Var, 0));
                } else {
                    SwiftApp.Companion companion = SwiftApp.d;
                    Context contextC = SwiftApp.Companion.c();
                    String string = contextC.getString(R.string.invalid_config);
                    string.getClass();
                    zn4 zn4Var2 = zn4.a;
                    zn4.e(new cv(14, contextC, string));
                    n30VarV.d();
                }
            }
        }
        V().j.e(this, new y20(0, new lm(this, 4)));
        V().k.e(this, new y20(0, new w20(this, i)));
        V().l.e(this, new y20(0, new c7(this, i3)));
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_apps_config_run_activity, menu);
        this.k0 = menu;
        this.l0 = menu.findItem(R.id.action_select_all);
        k0();
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        ((FastScroller) this.h0.getValue()).e();
        super.onDestroy();
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        ym7 ym7Var = (ym7) V().j.d();
        if (ym7Var == null) {
            ym7Var = ym7.LOADING;
        }
        if (ym7Var == ym7.DATA_RECEIVED) {
            int itemId = menuItem.getItemId();
            if (itemId == R.id.action_select_all) {
                f30 f30Var = this.j0;
                if (f30Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                if (f30Var.e.a.isEmpty()) {
                    Const.L();
                } else {
                    menuItem.setChecked(!menuItem.isChecked());
                    f30 f30Var2 = this.j0;
                    if (f30Var2 == null) {
                        pe4.F("mAdapter");
                        throw null;
                    }
                    f30Var2.s(menuItem.isChecked());
                }
            } else if (itemId == R.id.action_app_backup_settings) {
                String string = getString(R.string.app_backups);
                string.getClass();
                Intent intent = new Intent(this, (Class<?>) SettingsDetailActivity.class);
                intent.putExtra("category", 1);
                intent.putExtra("category_title", string);
                startActivity(intent);
            } else if (itemId == R.id.action_settings) {
                startActivity(new Intent(this, (Class<?>) SettingsActivity.class));
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        if (this.j0 != null) {
            ex6 ex6Var = V().k;
            f30 f30Var = this.j0;
            if (f30Var != null) {
                ex6Var.k(fm7.a(f30Var.e, null, null, false, 23));
            } else {
                pe4.F("mAdapter");
                throw null;
            }
        }
    }
}
