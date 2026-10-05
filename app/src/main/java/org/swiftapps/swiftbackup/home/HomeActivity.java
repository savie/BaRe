package org.swiftapps.swiftbackup.home;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.card.MaterialCardView;
import defpackage.ak;
import defpackage.b67;
import defpackage.bz;
import defpackage.c64;
import defpackage.cr;
import defpackage.cz;
import defpackage.e20;
import defpackage.el1;
import defpackage.er1;
import defpackage.er6;
import defpackage.f20;
import defpackage.fs;
import defpackage.gj;
import defpackage.gv7;
import defpackage.h00;
import defpackage.i00;
import defpackage.l90;
import defpackage.lm;
import defpackage.ls;
import defpackage.mo3;
import defpackage.ms;
import defpackage.nc8;
import defpackage.nq7;
import defpackage.ol5;
import defpackage.p15;
import defpackage.ph6;
import defpackage.pw5;
import defpackage.sz8;
import defpackage.t44;
import defpackage.u12;
import defpackage.u44;
import defpackage.ur3;
import defpackage.v44;
import defpackage.vs7;
import defpackage.w44;
import defpackage.x50;
import defpackage.x65;
import defpackage.x7;
import defpackage.yt5;
import defpackage.zf1;
import defpackage.zs;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.views.NoSwipeViewPager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class HomeActivity extends er6 {
    public static final Map b0 = x65.r0(new pw5(Integer.valueOf(R.id.nav_home), 0), new pw5(Integer.valueOf(R.id.nav_cloud), 1), new pw5(Integer.valueOf(R.id.nav_schedule), 2), new pw5(Integer.valueOf(R.id.nav_account), 3));
    public final l90 X;
    public final gv7 Y;
    public int Z = R.id.nav_home;
    public final gv7 a0 = new gv7(new gj(this, 22));

    public HomeActivity() {
        int i = 5;
        this.X = new l90(ph6.a(c64.class), new ls(this, 8), new f20(this, i), new ms(this, 11));
        this.Y = new gv7(new mo3(this, i));
    }

    public final ol5 Y() {
        return (ol5) Z().d;
    }

    public final w44 Z() {
        return (w44) this.Y.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] */
    public final c64 V() {
        return (c64) this.X.getValue();
    }

    public final void b0(int i) {
        View childAt = Z().f.getChildAt(i);
        if (childAt instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) childAt;
            nestedScrollView.u(0 - nestedScrollView.getScrollX(), 0 - nestedScrollView.getScrollY(), false);
        } else {
            ViewGroup viewGroup = childAt instanceof ViewGroup ? (ViewGroup) childAt : null;
            if (viewGroup != null) {
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt2 = viewGroup.getChildAt(i2);
                    if (childAt2 instanceof NestedScrollView) {
                        NestedScrollView nestedScrollView2 = (NestedScrollView) childAt2;
                        nestedScrollView2.u(0 - nestedScrollView2.getScrollX(), 0 - nestedScrollView2.getScrollY(), false);
                        break;
                    }
                }
            }
        }
        if (childAt != null) {
            childAt.post(new u12(this, 2));
        }
    }

    @Override // defpackage.er6, defpackage.sa1, androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        cr.b(this, i, i2, intent);
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        overridePendingTransition(0, 0);
        View view = Z().a;
        view.getClass();
        if (K(view)) {
            setSupportActionBar((MaterialToolbar) Z().c.e);
            nc8 supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.b0(false);
            }
            TextView textView = (TextView) Z().c.n;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("SWIFTBACKUP");
            Context context = textView.getContext();
            context.getClass();
            int i = 1;
            int i2 = 2;
            int i3 = 6;
            spannableStringBuilder.setSpan(new ForegroundColorSpan(context.getColor(sz8.y(context, R.attr.colorPrimary))), nq7.h0("SWIFTBACKUP", "Backup", 0, true, 2), nq7.h0("SWIFTBACKUP", "Backup", 0, true, 2) + 6, 33);
            textView.setText(spannableStringBuilder);
            TextView textView2 = (TextView) Z().c.k;
            String string = getString(R.string.premium);
            String str = "dev";
            String upperCase = null;
            if (nq7.Z("5.1.0", "dev", true) || nq7.Z("5.1.0", "alpha", true) || nq7.Z("5.1.0", "beta", true) || nq7.Z("5.1.0", "rc", true)) {
                if (!nq7.Z("5.1.0", "dev", true)) {
                    if (nq7.Z("5.1.0", "alpha", true)) {
                        str = "alpha";
                    } else if (nq7.Z("5.1.0", "beta", true)) {
                        str = "beta";
                    } else {
                        str = nq7.Z("5.1.0", "rc", true) ? "rc" : null;
                    }
                }
                if (str != null) {
                    Locale locale = Locale.ENGLISH;
                    locale.getClass();
                    upperCase = str.toUpperCase(locale);
                    upperCase.getClass();
                }
            }
            textView2.setText(el1.Y0(x50.p0(new String[]{string, upperCase}), " | ", null, null, null, 62));
            ImageView imageView = (ImageView) Z().c.c;
            p15.a(imageView);
            imageView.setOnClickListener(new zf1(this, 3));
            ((MaterialCardView) Z().c.d).setOnClickListener(new h00(this, 4));
            View view2 = Z().a;
            view2.getClass();
            yt5.a(view2, new x7(view2, this, i2));
            LinearLayout linearLayout = (LinearLayout) Z().c.b;
            int i4 = 8;
            linearLayout.setOnClickListener(new i00(this, i4));
            linearLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: s44
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view3) {
                    boolean z;
                    Map map = HomeActivity.b0;
                    boolean z2 = false;
                    try {
                        SharedPreferences sharedPreferences = cz4.f;
                        if (sharedPreferences == null) {
                            pe4.F("prefs");
                            throw null;
                        }
                        z = sharedPreferences.getBoolean("compact_storage_info", false);
                        boolean z3 = !z;
                        SharedPreferences.Editor editor = cz4.k;
                        if (editor == null) {
                            pe4.F("editor");
                            throw null;
                        }
                        editor.putBoolean("compact_storage_info", z3).apply();
                        ex6 ex6Var = (ex6) this.a.F().j.getValue();
                        try {
                            SharedPreferences sharedPreferences2 = cz4.f;
                            if (sharedPreferences2 == null) {
                                pe4.F("prefs");
                                throw null;
                            }
                            z2 = sharedPreferences2.getBoolean("compact_storage_info", false);
                            ex6Var.k(Boolean.valueOf(z2));
                            return true;
                        } catch (ClassCastException unused) {
                        }
                    } catch (ClassCastException unused2) {
                        z = false;
                    }
                }
            });
            if (bundle != null) {
                this.Z = bundle.getInt("saved_fragment", R.id.nav_home);
            }
            L(false, new ak(this, 21));
            if (b67.a()) {
                int iA = !v() ? vs7.SURFACE_1.a(this) : Const.k(this);
                Y().setBackgroundColor(iA);
                if ((Y() instanceof BottomNavigationView) && !b67.f()) {
                    getWindow().setNavigationBarColor(iA);
                }
            }
            int i5 = 11;
            c64.l.e(this, new e20(i, new lm(this, i5)));
            c64.m.e(this, new e20(i, new zs(this, i4)));
            Y().setOnItemSelectedListener(new fs(this, i3));
            Y().setOnItemReselectedListener(new er1(this));
            Z().f.setOffscreenPageLimit(3);
            NoSwipeViewPager noSwipeViewPager = Z().f;
            ur3 supportFragmentManager = getSupportFragmentManager();
            supportFragmentManager.getClass();
            noSwipeViewPager.setAdapter(new t44(supportFragmentManager));
            Z().f.b(new u44(this));
            Y().setSelectedItemId(this.Z);
            A(Y().getSelectedItemId() != R.id.nav_home);
            Z().f.b(new v44(this));
            SwiftApp.Companion companion = SwiftApp.d;
            SwiftApp.Companion.a().a.e(this, new e20(i, new bz(5, this, bundle)));
            F().k.e(this, new e20(i, new cz(this, i5)));
        }
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        ArrayList arrayList = Z().f.l0;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    @Override // defpackage.io1, android.app.Activity
    public final void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        if (intent.hasExtra("android.content.pm.extra.STATUS")) {
            cr.c(this, this, intent);
        }
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        bundle.putInt("saved_fragment", Y().getSelectedItemId());
        super.onSaveInstanceState(bundle);
    }

    @Override // defpackage.k28
    public final boolean s() {
        return false;
    }
}
