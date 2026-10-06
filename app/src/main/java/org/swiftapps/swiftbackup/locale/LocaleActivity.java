package org.swiftapps.swiftbackup.locale;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import defpackage.ak;
import defpackage.cv;
import defpackage.cz4;
import defpackage.d05;
import defpackage.e05;
import defpackage.el1;
import defpackage.g05;
import defpackage.gj;
import defpackage.gv7;
import defpackage.hs4;
import defpackage.il0;
import defpackage.is4;
import defpackage.ix0;
import defpackage.jc1;
import defpackage.l90;
import defpackage.ma8;
import defpackage.n05;
import defpackage.na8;
import defpackage.nc8;
import defpackage.nq7;
import defpackage.o30;
import defpackage.oa8;
import defpackage.p30;
import defpackage.pa8;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.ra8;
import defpackage.sz8;
import defpackage.uc1;
import defpackage.v12;
import defpackage.w92;
import defpackage.xx3;
import defpackage.z20;
import defpackage.zf1;
import defpackage.zn4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.contributor.ContributorRegistration;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class LocaleActivity extends il0 {
    public static final /* synthetic */ int P = 0;
    public final l90 K = new l90(ph6.a(n05.class), new o30(this, 6), new z20(this, 9), new p30(this, 3));
    public final gv7 L = new gv7(new hs4(this, 2));
    public final gv7 M = new gv7(new gj(this, 27));
    public final g05 N = new g05(null);
    public final gv7 O = new gv7(new ak(this, 25));

    @Override // defpackage.il0
    public final boolean D() {
        return false;
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public final n05 V() {
        return (n05) this.K.getValue();
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        gv7 gv7Var = this.L;
        setContentView(((e05) gv7Var.getValue()).a);
        setSupportActionBar((Toolbar) ((ix0) ((e05) gv7Var.getValue()).b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        int i = 1;
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) this.M.getValue();
        sz8.b(quickRecyclerView, 7);
        Context context = quickRecyclerView.getContext();
        context.getClass();
        quickRecyclerView.setLayoutManager(new PreCachingLinearLayoutManager(context, 1));
        g05 g05Var = this.N;
        quickRecyclerView.setAdapter(g05Var);
        g05Var.j = new uc1(this);
        U().e.e(this, new w92(new d05(this, bundle == null), i));
        U().j();
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        boolean z;
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_locale_activity, menu);
        MenuItem menuItemFindItem = menu.findItem(R.id.action_show_wip_languages);
        List listM = xx3.m();
        boolean z2 = false;
        if (!listM.isEmpty()) {
            Iterator it = listM.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (((is4) it.next()).d < 100.0d) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
            break;
        }
        menuItemFindItem.setVisible(z);
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z2 = sharedPreferences.getBoolean("show_wip_languages", false);
            menuItemFindItem.setChecked(z2);
            return super.onCreateOptionsMenu(menu);
        } catch (ClassCastException unused) {
        }
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        ArrayList arrayList;
        Object next;
        Locale localeA;
        String string;
        String str;
        Locale locale;
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_credits) {
            ArrayList arrayList2 = U().g;
            if (arrayList2 != null) {
                arrayList = new ArrayList();
                for (is4 is4Var : xx3.l()) {
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj : arrayList2) {
                        ContributorRegistration contributorRegistration = (ContributorRegistration) obj;
                        if (contributorRegistration.isTranslator() && (str = contributorRegistration.get_name()) != null && str.length() != 0 && !nq7.j0(contributorRegistration.get_name())) {
                            List<Locale> locales = contributorRegistration.getLocales();
                            if (pe4.d((locales == null || (locale = (Locale) el1.S0(locales)) == null) ? null : locale.toString(), is4Var.toString())) {
                                arrayList3.add(obj);
                            }
                        }
                    }
                    if (!arrayList3.isEmpty()) {
                        arrayList.add(new ma8(is4Var, el1.n1(arrayList3, new jc1(6))));
                    }
                }
            } else {
                arrayList = null;
            }
            if (arrayList == null || arrayList.isEmpty()) {
                String string2 = getString(R.string.loading);
                string2.getClass();
                zn4 zn4Var = zn4.a;
                zn4.e(new cv(14, this, string2));
            } else {
                pa8 pa8Var = (pa8) this.O.getValue();
                pa8Var.getClass();
                Iterator it = arrayList.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    localeA = ((ma8) next).a.a();
                    try {
                        SharedPreferences sharedPreferences = cz4.f;
                        if (sharedPreferences == null) {
                            pe4.F("prefs");
                            throw null;
                        }
                        string = sharedPreferences.getString("app_locale", null);
                    } catch (ClassCastException unused) {
                        string = null;
                    }
                } while (!localeA.equals((string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a()));
                ma8 ma8Var = (ma8) next;
                ra8 ra8Var = (ra8) pa8Var.S.getValue();
                sz8.d0(ra8Var.a, ma8Var != null);
                if (sz8.I(ra8Var.a)) {
                    na8 na8Var = new na8(ra8Var, ra8Var.c, ra8Var.b, ra8Var.d);
                    if (ma8Var != null) {
                        na8Var.r(ma8Var);
                    }
                }
                QuickRecyclerView quickRecyclerView = (QuickRecyclerView) pa8Var.R.getValue();
                quickRecyclerView.setLayoutManager(new StaggeredGridLayoutManager(2, 1));
                quickRecyclerView.setItemAnimator(null);
                ArrayList arrayList4 = new ArrayList();
                for (Object obj2 : arrayList) {
                    if (!pe4.d(((ma8) obj2).a, ma8Var != null ? ma8Var.a : null)) {
                        arrayList4.add(obj2);
                    }
                }
                quickRecyclerView.setAdapter(new oa8(arrayList4));
                Object value = pa8Var.T.getValue();
                value.getClass();
                ((View) value).setOnClickListener(new zf1(pa8Var, 9));
                ((NestedScrollView) pa8Var.Q.getValue()).post(new v12(pa8Var, 2));
                pa8Var.show();
            }
        } else if (itemId == R.id.action_show_wip_languages) {
            menuItem.setChecked(!menuItem.isChecked());
            boolean zIsChecked = menuItem.isChecked();
            SharedPreferences.Editor editor = cz4.k;
            if (editor == null) {
                pe4.F("editor");
                throw null;
            }
            editor.putBoolean("show_wip_languages", zIsChecked).apply();
            U().f = menuItem.isChecked();
            U().j();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        U().e.k(this.N.e);
    }
}
