package org.swiftapps.swiftbackup.appslist.ui.list;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.ferfalk.simplesearchview.SimpleSearchView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.l4digital.fastscroll.FastScroller;
import defpackage.as;
import defpackage.b6;
import defpackage.bs;
import defpackage.bt;
import defpackage.bt3;
import defpackage.c7;
import defpackage.cz4;
import defpackage.d7;
import defpackage.ds;
import defpackage.dt;
import defpackage.dv;
import defpackage.es;
import defpackage.fl1;
import defpackage.fm7;
import defpackage.fs;
import defpackage.gj;
import defpackage.gs;
import defpackage.gv7;
import defpackage.id2;
import defpackage.is;
import defpackage.jp2;
import defpackage.jq6;
import defpackage.js;
import defpackage.kf;
import defpackage.ks;
import defpackage.kz4;
import defpackage.l90;
import defpackage.ls;
import defpackage.mp6;
import defpackage.ms;
import defpackage.nc8;
import defpackage.ns;
import defpackage.nt;
import defpackage.os;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.qt;
import defpackage.sc3;
import defpackage.sz8;
import defpackage.tf2;
import defpackage.tt;
import defpackage.ua1;
import defpackage.vk9;
import defpackage.vr;
import defpackage.ws;
import defpackage.xr;
import defpackage.yr;
import defpackage.z28;
import defpackage.zr;
import defpackage.zx2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.views.SpeedyLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AppListActivity extends dt {
    public static final /* synthetic */ int q0 = 0;
    public final l90 d0;
    public final gv7 e0;
    public final gv7 f0;
    public final gv7 h0;
    public final gv7 i0;
    public final gv7 j0;
    public final gv7 k0;
    public final gv7 l0;
    public final gv7 m0;
    public final gv7 n0;
    public final gv7 p0;
    public final int g0 = 8388613;
    public final gv7 o0 = new gv7(new kf(this, 4));

    public AppListActivity() {
        final int i = 0;
        this.d0 = new l90(ph6.a(tt.class), new ms(this, i), new ls(this, i), new ns(this, i));
        this.e0 = new gv7(new bt3(this) { // from class: cs
            public final /* synthetic */ AppListActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i2 = i;
                AppListActivity appListActivity = this.b;
                switch (i2) {
                    case 0:
                        int i3 = AppListActivity.q0;
                        View viewInflate = appListActivity.getLayoutInflater().inflate(R.layout.app_list_activity, (ViewGroup) null, false);
                        int i4 = R.id.appbar_with_filters;
                        View viewU = ms8.u(viewInflate, R.id.appbar_with_filters);
                        if (viewU != null) {
                            x00 x00VarA = x00.a(viewU);
                            i4 = R.id.apps_recycler_view;
                            RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.apps_recycler_view);
                            if (recyclerView != null) {
                                i4 = R.id.btn_actions;
                                ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ms8.u(viewInflate, R.id.btn_actions);
                                if (extendedFloatingActionButton != null) {
                                    i4 = R.id.drawer_container;
                                    ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(viewInflate, R.id.drawer_container);
                                    if (constraintLayout != null) {
                                        i4 = R.id.error_layout;
                                        View viewU2 = ms8.u(viewInflate, R.id.error_layout);
                                        if (viewU2 != null) {
                                            zx2 zx2VarA = zx2.a(viewU2);
                                            i4 = R.id.fast_scroller;
                                            FastScroller fastScroller = (FastScroller) ms8.u(viewInflate, R.id.fast_scroller);
                                            if (fastScroller != null) {
                                                i4 = R.id.rv_drawer_bottom;
                                                QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_drawer_bottom);
                                                if (quickRecyclerView != null) {
                                                    i4 = R.id.rv_drawer_top;
                                                    QuickRecyclerView quickRecyclerView2 = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_drawer_top);
                                                    if (quickRecyclerView2 != null) {
                                                        i4 = R.id.swipe_layout;
                                                        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ms8.u(viewInflate, R.id.swipe_layout);
                                                        if (swipeRefreshLayout != null) {
                                                            return new os((DrawerLayout) viewInflate, x00VarA, recyclerView, extendedFloatingActionButton, constraintLayout, zx2VarA, fastScroller, quickRecyclerView, quickRecyclerView2, swipeRefreshLayout);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                        return null;
                    default:
                        int i5 = AppListActivity.q0;
                        return appListActivity.p0().d;
                }
            }
        });
        final int i2 = 1;
        this.f0 = new gv7(new zr(this, i2));
        this.h0 = new gv7(new as(this, i2));
        this.i0 = new gv7(new bs(this, i2));
        this.j0 = new gv7(new bt3(this) { // from class: cs
            public final /* synthetic */ AppListActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                AppListActivity appListActivity = this.b;
                switch (i3) {
                    case 0:
                        int i4 = AppListActivity.q0;
                        View viewInflate = appListActivity.getLayoutInflater().inflate(R.layout.app_list_activity, (ViewGroup) null, false);
                        int i5 = R.id.appbar_with_filters;
                        View viewU = ms8.u(viewInflate, R.id.appbar_with_filters);
                        if (viewU != null) {
                            x00 x00VarA = x00.a(viewU);
                            i5 = R.id.apps_recycler_view;
                            RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.apps_recycler_view);
                            if (recyclerView != null) {
                                i5 = R.id.btn_actions;
                                ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ms8.u(viewInflate, R.id.btn_actions);
                                if (extendedFloatingActionButton != null) {
                                    i5 = R.id.drawer_container;
                                    ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(viewInflate, R.id.drawer_container);
                                    if (constraintLayout != null) {
                                        i5 = R.id.error_layout;
                                        View viewU2 = ms8.u(viewInflate, R.id.error_layout);
                                        if (viewU2 != null) {
                                            zx2 zx2VarA = zx2.a(viewU2);
                                            i5 = R.id.fast_scroller;
                                            FastScroller fastScroller = (FastScroller) ms8.u(viewInflate, R.id.fast_scroller);
                                            if (fastScroller != null) {
                                                i5 = R.id.rv_drawer_bottom;
                                                QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_drawer_bottom);
                                                if (quickRecyclerView != null) {
                                                    i5 = R.id.rv_drawer_top;
                                                    QuickRecyclerView quickRecyclerView2 = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_drawer_top);
                                                    if (quickRecyclerView2 != null) {
                                                        i5 = R.id.swipe_layout;
                                                        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ms8.u(viewInflate, R.id.swipe_layout);
                                                        if (swipeRefreshLayout != null) {
                                                            return new os((DrawerLayout) viewInflate, x00VarA, recyclerView, extendedFloatingActionButton, constraintLayout, zx2VarA, fastScroller, quickRecyclerView, quickRecyclerView2, swipeRefreshLayout);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i5)));
                        return null;
                    default:
                        int i6 = AppListActivity.q0;
                        return appListActivity.p0().d;
                }
            }
        });
        this.k0 = new gv7(new ds(this, i2));
        this.l0 = new gv7(new vr(this, i2));
        this.m0 = new gv7(new bt3(this) { // from class: wr
            public final /* synthetic */ AppListActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                AppListActivity appListActivity = this.b;
                switch (i3) {
                    case 0:
                        int i4 = AppListActivity.q0;
                        return new ws(appListActivity, appListActivity.U(), appListActivity.Y().isCloudSection());
                    default:
                        int i5 = AppListActivity.q0;
                        return appListActivity.p0().k;
                }
            }
        });
        this.n0 = new gv7(new bt3(this) { // from class: wr
            public final /* synthetic */ AppListActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i;
                AppListActivity appListActivity = this.b;
                switch (i3) {
                    case 0:
                        int i4 = AppListActivity.q0;
                        return new ws(appListActivity, appListActivity.U(), appListActivity.Y().isCloudSection());
                    default:
                        int i5 = AppListActivity.q0;
                        return appListActivity.p0().k;
                }
            }
        });
        this.p0 = new gv7(new yr(this, i2));
    }

    @Override // defpackage.dt
    public final void c0() {
        U().k(false, true);
    }

    @Override // defpackage.dt
    public final void e0() {
        ((sc3) this.p0.getValue()).show();
    }

    public final void g0(boolean z, View... viewArr) {
        int i = 0;
        int i2 = z ? 0 : 8;
        for (View view : viewArr) {
            if (view instanceof SwipeRefreshLayout) {
                if ((!n0().k || !z) && z != o0().c) {
                    if (z) {
                        o0().setRefreshing(true);
                    } else {
                        o0().postDelayed(new is(this, i), 1500L);
                    }
                }
            } else if (view.getId() != i0().getId()) {
                view.setVisibility(i2);
            } else if (!z || this.Y) {
                sz8.F(i0(), 0L);
            } else {
                ExtendedFloatingActionButton extendedFloatingActionButtonI0 = i0();
                extendedFloatingActionButtonI0.getClass();
                sz8.e0(extendedFloatingActionButtonI0, false);
            }
        }
    }

    public final void h0() {
        if (s0()) {
            DrawerLayout drawerLayoutJ0 = j0();
            int i = this.g0;
            View viewD = drawerLayoutJ0.d(i);
            if (viewD != null) {
                drawerLayoutJ0.b(viewD);
            } else {
                b6.e(DrawerLayout.h(i), "No drawer view found with gravity ");
            }
        }
    }

    public final ExtendedFloatingActionButton i0() {
        return (ExtendedFloatingActionButton) this.j0.getValue();
    }

    public final DrawerLayout j0() {
        return (DrawerLayout) this.f0.getValue();
    }

    public final zx2 k0() {
        return (zx2) this.k0.getValue();
    }

    public final ws l0() {
        return (ws) this.n0.getValue();
    }

    public final RecyclerView m0() {
        return (RecyclerView) this.l0.getValue();
    }

    public final SimpleSearchView n0() {
        return (SimpleSearchView) this.i0.getValue();
    }

    public final SwipeRefreshLayout o0() {
        return (SwipeRefreshLayout) this.h0.getValue();
    }

    @Override // defpackage.dt, defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(p0().a);
        Intent intent = getIntent();
        bt btVar = intent != null ? (bt) intent.getSerializableExtra("KEY_SECTION") : null;
        if (btVar == null) {
            btVar = bt.LOCAL;
        }
        this.X = btVar;
        int i = 0;
        L(false, new vr(this, i));
        tf2 tf2Var = (tf2) p0().b.d;
        Toolbar toolbar = (Toolbar) tf2Var.c;
        setSupportActionBar(toolbar);
        nc8 supportActionBar = getSupportActionBar();
        int i2 = 1;
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.b0(false);
        }
        CheckedTextView checkedTextView = (CheckedTextView) tf2Var.f;
        checkedTextView.setText(Y().getToolbarTitle());
        Drawable drawable = getDrawable(R.drawable.ic_menu_down);
        drawable.getClass();
        checkedTextView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable, (Drawable) null);
        ((ConstraintLayout) tf2Var.d).setOnClickListener(new xr(this, i));
        p0().e.setBackgroundColor(p());
        int i3 = 3;
        j0().setDrawerLockMode(s0() ? 3 : 1);
        DrawerLayout drawerLayoutJ0 = j0();
        ks ksVar = new ks(this);
        if (drawerLayoutJ0.K == null) {
            drawerLayoutJ0.K = new ArrayList();
        }
        drawerLayoutJ0.K.add(ksVar);
        QuickRecyclerView quickRecyclerView = p0().p;
        int i4 = QuickRecyclerView.c1;
        quickRecyclerView.setLinearLayoutManager(1);
        String string = getString(R.string.quick_actions);
        string.getClass();
        jp2 jp2Var = new jp2(string, (String) null, (String) null, R.drawable.ic_quick_actions_outline, false, (bt3) new gj(this, 6), 54);
        String string2 = getString(R.string.app_labels);
        string2.getClass();
        jp2 jp2Var2 = new jp2(string2, getString(R.string.app_labels_description), (String) null, R.drawable.ic_label_outline, false, (bt3) new yr(this, i), 52);
        String string3 = getString(R.string.custom_configurations);
        string3.getClass();
        String string4 = getString(R.string.custom_configurations_description);
        String string5 = getString(R.string.for_advanced_rooted_users);
        mp6 mp6Var = mp6.a;
        jp2 jp2Var3 = new jp2(string3, string4, string5, R.drawable.ic_configs, mp6.f(), new zr(this, i), 32);
        String string6 = getString(R.string.blacklist);
        string6.getClass();
        List listA0 = fl1.A0(jp2Var, jp2Var2, jp2Var3, new jp2(string6, getString(R.string.blacklist_apps_msg), (String) null, R.drawable.ic_settings_block_filled, false, (bt3) new as(this, i), 52));
        String str = null;
        quickRecyclerView.setAdapter(new id2(this, new fm7(listA0, (Set) null, false, (String) null, 30)));
        QuickRecyclerView quickRecyclerView2 = p0().n;
        sz8.b(quickRecyclerView2, 7);
        quickRecyclerView2.setLinearLayoutManager(1);
        String string7 = getString(R.string.app_backup_settings);
        string7.getClass();
        jp2 jp2Var4 = new jp2(string7, (String) null, str, R.drawable.ic_app, false, (bt3) new bs(this, i), 22);
        String string8 = getString(R.string.settings);
        string8.getClass();
        quickRecyclerView2.setAdapter(new id2(this, new fm7(fl1.A0(jp2Var4, new jp2(string8, str, (String) null, R.drawable.ic_settings, false, (bt3) new ds(this, i), 54)), (Set) null, false, (String) null, 30)));
        toolbar.setOnClickListener(new es(this, i));
        ws wsVarL0 = l0();
        TextView textView = (TextView) tf2Var.e;
        wsVarL0.getClass();
        wsVarL0.p = textView;
        wsVarL0.z();
        View viewFindViewById = n0().findViewById(R.id.bottomLine);
        viewFindViewById.getClass();
        viewFindViewById.setVisibility(8);
        n0().setHint(getString(R.string.search_hint_apps));
        n0().setOnQueryTextListener(new z28(this, 4));
        n0().setOnSearchViewListener(new jq6(this, i3));
        Const.H(o0(), v());
        o0().setOnRefreshListener(new fs(this, i));
        RecyclerView recyclerViewM0 = m0();
        sz8.b(recyclerViewM0, 7);
        recyclerViewM0.setLayoutManager(new SpeedyLinearLayoutManager(this));
        recyclerViewM0.setHasFixedSize(true);
        recyclerViewM0.setItemViewCacheSize(4);
        recyclerViewM0.setAdapter(l0());
        FastScroller fastScroller = (FastScroller) this.m0.getValue();
        fastScroller.setSectionIndexer(l0());
        fastScroller.d(m0());
        fastScroller.setFastScrollListener(new vk9(this, i2));
        d0(j0());
        ExtendedFloatingActionButton extendedFloatingActionButtonI0 = i0();
        sz8.f0(extendedFloatingActionButtonI0, m0(), false);
        extendedFloatingActionButtonI0.setOnClickListener(new gs(this, i));
        tt ttVarU = U();
        bt btVarY = Y();
        if (!ttVarU.g) {
            ttVarU.g = true;
            ttVarU.e = btVarY.isCloudSection();
            dv dvVar = btVarY.isCloudSection() ? ua1.g : kz4.g;
            dvVar.getClass();
            ttVarU.n = dvVar;
            ttVarU.k(false, false);
        }
        U().h.e(this, new js(i, new c7(this, i2)));
        U().i.e(this, new js(i, new d7(this, i3)));
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_apps, menu);
        MenuItem menuItemFindItem = menu.findItem(R.id.action_drawer);
        boolean z = false;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("app_list_activity_drawer_shown", false);
            if (!z) {
                menuItemFindItem.setIcon(R.drawable.ic_menu_open_highlight);
            }
            return super.onCreateOptionsMenu(menu);
        } catch (ClassCastException unused) {
        }
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        ((FastScroller) this.m0.getValue()).e();
        super.onDestroy();
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        qt qtVar = (qt) U().h.d();
        boolean z = qtVar == null || qtVar.equals(nt.a);
        if (z) {
            return false;
        }
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_search) {
            if (z || U().j.isEmpty()) {
                Const.L();
            } else {
                n0().b(true);
            }
        } else if (itemId == R.id.action_filter) {
            dv dvVar = U().n;
            if (dvVar == null) {
                pe4.F("repo");
                throw null;
            }
            if (dvVar.c.isEmpty()) {
                Const.L();
            } else {
                e0();
            }
        } else if (itemId == R.id.action_drawer) {
            SharedPreferences.Editor editor = cz4.k;
            if (editor == null) {
                pe4.F("editor");
                throw null;
            }
            editor.putBoolean("app_list_activity_drawer_shown", true).apply();
            menuItem.setIcon(R.drawable.ic_menu_open);
            if (s0()) {
                h0();
            } else if (!s0()) {
                DrawerLayout drawerLayoutJ0 = j0();
                int i = this.g0;
                View viewD = drawerLayoutJ0.d(i);
                if (viewD == null) {
                    b6.e(DrawerLayout.h(i), "No drawer view found with gravity ");
                    return false;
                }
                drawerLayoutJ0.l(viewD);
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public final void onResume() {
        super.onResume();
        ws wsVarL0 = l0();
        wsVarL0.getClass();
        String strY = ws.y();
        if (strY.equals(wsVarL0.r)) {
            return;
        }
        wsVarL0.r = strY;
        wsVarL0.a.d(null, 0, wsVarL0.b());
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        U().i.k(fm7.a(l0().e, null, null, false, 23));
    }

    public final os p0() {
        return (os) this.e0.getValue();
    }

    @Override // defpackage.dt
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final tt a0() {
        return (tt) this.d0.getValue();
    }

    public final void r0(View... viewArr) {
        g0(false, (View[]) Arrays.copyOf(viewArr, viewArr.length));
    }

    public final boolean s0() {
        View viewD = j0().d(8388613);
        if (viewD != null) {
            return DrawerLayout.j(viewD);
        }
        return false;
    }

    public final void t0(View... viewArr) {
        g0(true, (View[]) Arrays.copyOf(viewArr, viewArr.length));
    }
}
