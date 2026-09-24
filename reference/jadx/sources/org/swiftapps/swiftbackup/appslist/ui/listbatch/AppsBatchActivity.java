package org.swiftapps.swiftbackup.appslist.ui.listbatch;

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
import androidx.recyclerview.widget.RecyclerView;
import com.ferfalk.simplesearchview.SimpleSearchView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.l4digital.fastscroll.FastScroller;
import defpackage.ae3;
import defpackage.ah;
import defpackage.ak;
import defpackage.bh;
import defpackage.bt;
import defpackage.c8;
import defpackage.ck;
import defpackage.cz4;
import defpackage.d76;
import defpackage.dd3;
import defpackage.de3;
import defpackage.dj;
import defpackage.dt;
import defpackage.e20;
import defpackage.e7;
import defpackage.ej;
import defpackage.ek;
import defpackage.el1;
import defpackage.eq3;
import defpackage.ex6;
import defpackage.ey2;
import defpackage.f20;
import defpackage.fm7;
import defpackage.g20;
import defpackage.gd3;
import defpackage.gv7;
import defpackage.hs;
import defpackage.i00;
import defpackage.jd3;
import defpackage.jq6;
import defpackage.kf;
import defpackage.km5;
import defpackage.l0;
import defpackage.l20;
import defpackage.l90;
import defpackage.lf;
import defpackage.li;
import defpackage.lm;
import defpackage.lr4;
import defpackage.ls;
import defpackage.m20;
import defpackage.md3;
import defpackage.mf;
import defpackage.ms;
import defpackage.n10;
import defpackage.n20;
import defpackage.nc8;
import defpackage.ox;
import defpackage.p20;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.q20;
import defpackage.r20;
import defpackage.rd3;
import defpackage.sc3;
import defpackage.sz8;
import defpackage.tf2;
import defpackage.u10;
import defpackage.ud3;
import defpackage.uv2;
import defpackage.v10;
import defpackage.vk9;
import defpackage.vr6;
import defpackage.ym7;
import defpackage.zc6;
import defpackage.zn4;
import defpackage.zs;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.settings.SettingsActivity;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;
import org.swiftapps.swiftbackup.views.SpeedyLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AppsBatchActivity extends dt {
    public static final /* synthetic */ int s0 = 0;
    public final l90 d0;
    public n10 f0;
    public zc6 g0;
    public final gv7 h0;
    public final gv7 i0;
    public final gv7 j0;
    public l20 m0;
    public final gv7 n0;
    public final gv7 o0;
    public Menu p0;
    public MenuItem q0;
    public final gv7 e0 = new gv7(new ak(this, 5));
    public final gv7 k0 = new gv7(new d76(this, 6));
    public final gv7 l0 = new gv7(new kf(this, 9));
    public final km5 r0 = new km5(this, 3);

    public AppsBatchActivity() {
        int i = 2;
        this.d0 = new l90(ph6.a(r20.class), new ls(this, i), new f20(this, 0), new ms(this, i));
        int i2 = 8;
        this.h0 = new gv7(new ek(this, i2));
        this.i0 = new gv7(new ah(this, i2));
        this.j0 = new gv7(new bh(this, i2));
        int i3 = 7;
        this.n0 = new gv7(new lf(this, i3));
        this.o0 = new gv7(new ej(this, i3));
    }

    @Override // defpackage.dt
    public final void c0() {
        r20 r20VarA0 = a0();
        zc6 zc6Var = r20VarA0.i;
        if (zc6Var != null) {
            zn4.c(new n20(r20VarA0, zc6Var, true));
        }
    }

    @Override // defpackage.dt
    public final void e0() {
        if (this.g0 == null) {
            l0.e(eq3.k("Implement for ", n10.class.getSimpleName(), "!!!"));
            return;
        }
        sc3 sc3Var = (sc3) this.o0.getValue();
        ArrayList arrayList = a0().j;
        boolean z = false;
        boolean z2 = arrayList != null && arrayList.contains(dd3.a);
        ArrayList arrayList2 = a0().j;
        boolean z3 = arrayList2 != null && arrayList2.contains(gd3.a);
        ArrayList arrayList3 = a0().j;
        boolean z4 = arrayList3 != null && arrayList3.contains(ud3.a);
        ArrayList arrayList4 = a0().j;
        boolean z5 = arrayList4 != null && arrayList4.contains(md3.a);
        ArrayList arrayList5 = a0().j;
        boolean z6 = arrayList5 != null && arrayList5.contains(rd3.a);
        ArrayList arrayList6 = a0().j;
        boolean z7 = arrayList6 != null && arrayList6.contains(de3.a);
        ArrayList arrayList7 = a0().j;
        boolean z8 = arrayList7 != null && arrayList7.contains(jd3.a);
        ArrayList arrayList8 = a0().j;
        if (arrayList8 != null && arrayList8.contains(ae3.a)) {
            z = true;
        }
        sc3Var.R = z2;
        sc3Var.S = z4;
        sc3Var.T = z3;
        sc3Var.U = z5;
        sc3Var.V = z6;
        sc3Var.W = z7;
        sc3Var.X = z8;
        sc3Var.Y = z;
        sc3Var.show();
    }

    public final ExtendedFloatingActionButton g0() {
        return (ExtendedFloatingActionButton) this.l0.getValue();
    }

    public final ey2 h0() {
        return (ey2) this.k0.getValue();
    }

    public final RecyclerView i0() {
        return (RecyclerView) this.h0.getValue();
    }

    public final SimpleSearchView j0() {
        return (SimpleSearchView) this.j0.getValue();
    }

    public final g20 k0() {
        return (g20) this.e0.getValue();
    }

    @Override // defpackage.dt
    /* JADX INFO: renamed from: l0, reason: merged with bridge method [inline-methods] */
    public final r20 a0() {
        return (r20) this.d0.getValue();
    }

    public final void m0(boolean z) {
        MenuItem menuItem = this.q0;
        if (menuItem != null) {
            menuItem.setChecked(z);
        }
        Drawable drawableW = Const.w(this, z ? R.drawable.checkbox_marked : R.drawable.checkbox_blank_outline, sz8.z(this));
        MenuItem menuItem2 = this.q0;
        if (menuItem2 != null) {
            menuItem2.setIcon(drawableW);
        }
    }

    public final void n0() {
        l20 l20Var = this.m0;
        if (l20Var != null) {
            new uv2(this, l20Var.l(), new ox(this, 1)).F(this, false, false);
        } else {
            pe4.F("mAdapter");
            throw null;
        }
    }

    public final void o0(c8 c8Var) {
        tf2 tf2Var = (tf2) k0().b.d;
        ((CheckedTextView) tf2Var.f).setText(c8Var.e());
        TextView textView = (TextView) tf2Var.e;
        textView.setText(getString(R.string.loading));
        int i = 1;
        ((ConstraintLayout) tf2Var.d).setOnClickListener(new i00(this, i));
        View viewFindViewById = j0().findViewById(R.id.bottomLine);
        viewFindViewById.getClass();
        viewFindViewById.setVisibility(8);
        j0().setHint(getString(R.string.search_hint_apps));
        j0().setOnQueryTextListener(new jq6(this, 4));
        int i2 = 2;
        j0().setOnSearchViewListener(new vk9(this, i2));
        l20 l20Var = new l20(this, c8Var.l(), textView, new zs(this, i), new lm(this, 3));
        l20Var.g = new li(this, i);
        this.m0 = l20Var;
        RecyclerView recyclerViewI0 = i0();
        sz8.b(recyclerViewI0, 7);
        recyclerViewI0.setLayoutManager(new SpeedyLinearLayoutManager(this));
        l20 l20Var2 = this.m0;
        if (l20Var2 == null) {
            pe4.F("mAdapter");
            throw null;
        }
        recyclerViewI0.setAdapter(l20Var2);
        recyclerViewI0.setHasFixedSize(true);
        recyclerViewI0.setItemViewCacheSize(4);
        FastScroller fastScroller = (FastScroller) this.i0.getValue();
        l20 l20Var3 = this.m0;
        if (l20Var3 == null) {
            pe4.F("mAdapter");
            throw null;
        }
        fastScroller.setSectionIndexer(l20Var3);
        fastScroller.d(i0());
        h0().d.setImageResource(R.drawable.ic_format_list_bulleted_type);
        h0().f.setText(R.string.list_is_empty);
        h0().e.setText(R.string.apps_empty_list_error);
        if (this.g0 != null) {
            h0().b.setText(R.string.refresh);
            h0().b.setOnClickListener(new dj(this, i));
        } else {
            h0().b.setText(R.string.back);
            h0().b.setOnClickListener(new hs(this, i));
        }
        ExtendedFloatingActionButton extendedFloatingActionButtonG0 = g0();
        sz8.f0(extendedFloatingActionButtonG0, i0(), false);
        if (c8Var.g()) {
            extendedFloatingActionButtonG0.setBackgroundColor(sz8.r(this));
            extendedFloatingActionButtonG0.setTextColor(-1);
            extendedFloatingActionButtonG0.setIconTint(sz8.h0(-1));
            extendedFloatingActionButtonG0.setRippleColor(sz8.h0(sz8.U(-1, 30)));
        }
        extendedFloatingActionButtonG0.setText(c8Var.n());
        extendedFloatingActionButtonG0.setIconResource(c8Var.m());
        g0().setOnClickListener(new mf(this, i2));
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0037  */
    @Override // defpackage.dt, defpackage.er6, defpackage.sa1, androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        Set setZ1;
        if (i != 100 || i2 != -1 || intent == null) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        String[] stringArrayExtra = intent.getStringArrayExtra("labels_extra_filtered_ids");
        if (stringArrayExtra == null) {
            setZ1 = null;
        } else {
            if (stringArrayExtra.length == 0) {
                stringArrayExtra = null;
            }
            if (stringArrayExtra != null) {
                ArrayList arrayList = new ArrayList();
                for (String str : stringArrayExtra) {
                    lr4 lr4Var = lr4.a;
                    LabelParams labelParamsC = lr4.c(str);
                    if (labelParamsC != null) {
                        arrayList.add(labelParamsC);
                    }
                }
                setZ1 = el1.z1(arrayList);
            } else {
                setZ1 = null;
            }
        }
        l20 l20Var = this.m0;
        if (l20Var == null) {
            pe4.F("mAdapter");
            throw null;
        }
        List listL = l20Var.l();
        if (setZ1 == null || setZ1.isEmpty() || listL.isEmpty()) {
            return;
        }
        boolean booleanExtra = intent.getBooleanExtra("select_mode_replace_existing_labels", true);
        r20 r20VarA0 = a0();
        zn4 zn4Var = zn4.a;
        zn4.b(null, new p20(listL, r20VarA0, booleanExtra, setZ1, null, 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.dt, defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(k0().a);
        setSupportActionBar((Toolbar) ((tf2) k0().b.d).c);
        nc8 supportActionBar = getSupportActionBar();
        boolean z = false;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.b0(false);
        }
        L(false, new ck(this, 8));
        Intent intent = getIntent();
        Object[] objArr6 = 0;
        n10 n10Var = intent != null ? (n10) intent.getParcelableExtra("batch_action_item") : null;
        this.f0 = n10Var;
        if (n10Var != null) {
            boolean z2 = n10Var.k;
            vr6.i$default(vr6.INSTANCE, r(), String.valueOf(this.f0), null, 4, null);
            this.X = z2 ? bt.CLOUD : bt.LOCAL;
            o0(n10Var);
            r20 r20VarA0 = a0();
            if (!r20VarA0.g) {
                r20VarA0.g = true;
                r20VarA0.e = z2;
                ArrayList arrayList = r20.r;
                if (arrayList == null) {
                    r20VarA0.d();
                } else {
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new q20(r20VarA0, n10Var, arrayList, objArr6 == true ? 1 : 0, 0));
                }
            }
        }
        Intent intent2 = getIntent();
        zc6 zc6Var = intent2 != null ? (zc6) intent2.getParcelableExtra("quick_action_item") : null;
        this.g0 = zc6Var;
        if (zc6Var != null) {
            boolean z3 = zc6Var.q;
            vr6.i$default(vr6.INSTANCE, r(), String.valueOf(this.g0), null, 4, null);
            this.X = z3 ? bt.CLOUD : bt.LOCAL;
            o0(zc6Var);
            ViewGroup viewGroup = k0().a;
            viewGroup.getClass();
            d0(viewGroup);
            r20 r20VarA1 = a0();
            if (!r20VarA1.g) {
                r20VarA1.g = true;
                r20VarA1.e = z3 && zc6Var.e;
                r20VarA1.i = zc6Var;
                zn4.c(new n20(r20VarA1, zc6Var, z));
            }
        }
        c8 c8Var = this.f0;
        if (c8Var == null) {
            c8Var = this.g0;
        }
        if (c8Var != null && c8Var.c() && !V.INSTANCE.getA()) {
            vr6.e$default(vr6.INSTANCE, r(), "User not premium! Finishing.", null, 4, null);
            finish();
        } else {
            a0().k.e(this, new e20(objArr5 == true ? 1 : 0, new e7(this, 2)));
            a0().l.e(this, new e20(objArr3 == true ? 1 : 0, new u10(this, objArr4 == true ? 1 : 0)));
            a0().m.e(this, new e20(objArr == true ? 1 : 0, new v10(this, objArr2 == true ? 1 : 0)));
        }
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_apps_batch_activity, menu);
        this.p0 = menu;
        this.q0 = menu.findItem(R.id.action_select_all);
        p0();
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        ((FastScroller) this.i0.getValue()).e();
        super.onDestroy();
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        ym7 ym7Var = (ym7) a0().k.d();
        if (ym7Var == null) {
            ym7Var = ym7.LOADING;
        }
        if (ym7Var == ym7.DATA_RECEIVED) {
            int itemId = menuItem.getItemId();
            if (itemId == R.id.action_search) {
                List list = a0().n;
                if (list == null || list.isEmpty()) {
                    Const.L();
                } else {
                    j0().b(true);
                }
            } else if (itemId == R.id.action_filter) {
                e0();
            } else if (itemId == R.id.action_select_all) {
                l20 l20Var = this.m0;
                if (l20Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                if (l20Var.e.a.isEmpty()) {
                    Const.L();
                } else {
                    menuItem.setChecked(!menuItem.isChecked());
                    l20 l20Var2 = this.m0;
                    if (l20Var2 == null) {
                        pe4.F("mAdapter");
                        throw null;
                    }
                    l20Var2.s(menuItem.isChecked());
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
        if (this.m0 != null) {
            ex6 ex6Var = a0().l;
            l20 l20Var = this.m0;
            if (l20Var != null) {
                ex6Var.k(fm7.a(l20Var.e, null, null, false, 23));
            } else {
                pe4.F("mAdapter");
                throw null;
            }
        }
    }

    @Override // defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onStart() {
        boolean z;
        boolean z2;
        super.onStart();
        boolean z3 = a0().h;
        boolean z4 = false;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("show_system_apps", false);
            if (z3 == z || this.g0 == null) {
                return;
            }
            r20 r20VarA0 = a0();
            try {
                SharedPreferences sharedPreferences2 = cz4.f;
                if (sharedPreferences2 == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z2 = sharedPreferences2.getBoolean("show_system_apps", false);
                r20VarA0.h = z2;
                r20 r20VarA1 = a0();
                zc6 zc6Var = r20VarA1.i;
                if (zc6Var == null) {
                    return;
                }
                r20VarA1.k.k(ym7.LOADING);
                zn4.d(new m20(r20VarA1, zc6Var, z4));
            } catch (ClassCastException unused) {
                z2 = false;
            }
        } catch (ClassCastException unused2) {
            z = false;
        }
    }

    public final void p0() {
        Menu menu = this.p0;
        if (menu != null) {
            ym7 ym7Var = (ym7) a0().k.d();
            if (ym7Var == null) {
                ym7Var = ym7.LOADING;
            }
            menu.setGroupVisible(R.id.grp_edit, ym7Var == ym7.DATA_RECEIVED);
            if (menu.hasVisibleItems()) {
                l20 l20Var = this.m0;
                if (l20Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                m0(l20Var.p());
            }
            if (this.f0 != null) {
                menu.findItem(R.id.action_filter).setVisible(false);
            }
        }
    }
}
