package org.swiftapps.swiftbackup.manage;

import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import defpackage.bk;
import defpackage.eq3;
import defpackage.fl;
import defpackage.gv7;
import defpackage.il0;
import defpackage.ix0;
import defpackage.n55;
import defpackage.nc8;
import defpackage.p93;
import defpackage.px;
import defpackage.qo0;
import defpackage.qy5;
import defpackage.r55;
import defpackage.ry5;
import defpackage.sz8;
import defpackage.t55;
import defpackage.u14;
import defpackage.u55;
import defpackage.xs1;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ManageSpaceActivity extends il0 {
    public static final /* synthetic */ int O = 0;
    public final gv7 K = new gv7(new bk(this, 29));
    public final gv7 L = new gv7(new n55(this, 0));
    public final gv7 M = new gv7(new u14(this, 4));
    public final gv7 N = new gv7(new fl(10));

    public static final u55 N(ManageSpaceActivity manageSpaceActivity, ry5 ry5Var, boolean z) {
        p93 p93Var = p93.a;
        long jF = p93Var.f(z ? ry5Var.h : ry5Var.g);
        long jF2 = p93Var.f(z ? ry5Var.k : ry5Var.j);
        long jF3 = p93Var.f(z ? ry5Var.m : ry5Var.l);
        long jF4 = p93Var.f(z ? ry5Var.t : ry5Var.s);
        long jF5 = p93Var.f(z ? ry5Var.r : ry5Var.q);
        long jF6 = p93Var.f(z ? ry5Var.o : ry5Var.n);
        long j = jF + jF2 + jF3 + jF4 + jF5 + jF6;
        String string = manageSpaceActivity.getString(z ? R.string.delete_cloud_cache_summary : R.string.delete_backup_files_summary);
        string.getClass();
        String string2 = manageSpaceActivity.getString(R.string.apps);
        String strC = p93.c(Long.valueOf(jF));
        String string3 = manageSpaceActivity.getString(R.string.messages);
        String strC2 = p93.c(Long.valueOf(jF2));
        String string4 = manageSpaceActivity.getString(R.string.calls);
        String strC3 = p93.c(Long.valueOf(jF3));
        String string5 = manageSpaceActivity.getString(R.string.folders);
        String strC4 = p93.c(Long.valueOf(jF4));
        String string6 = manageSpaceActivity.getString(R.string.wallpapers);
        String strC5 = p93.c(Long.valueOf(jF5));
        String string7 = manageSpaceActivity.getString(R.string.wifi_networks);
        String strC6 = p93.c(Long.valueOf(jF6));
        StringBuilder sb = new StringBuilder();
        sb.append(string);
        sb.append("\n");
        sb.append(string2);
        sb.append(": ");
        sb.append(strC);
        xs1.t(sb, "\n", string3, ": ", strC2);
        xs1.t(sb, "\n", string4, ": ", strC3);
        xs1.t(sb, "\n", string5, ": ", strC4);
        xs1.t(sb, "\n", string6, ": ", strC5);
        String strO = eq3.o(sb, "\n", string7, ": ", strC6);
        SwiftApp.Companion companion = SwiftApp.d;
        String string8 = SwiftApp.Companion.c().getString(z ? R.string.delete_cloud_cache : R.string.delete_backup_files);
        Long lValueOf = Long.valueOf(j);
        boolean z2 = !z;
        string8.getClass();
        return new u55(z ? 1 : 0, string8, lValueOf, strO, z2, false);
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 V() {
        return null;
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        gv7 gv7Var = this.K;
        CoordinatorLayout coordinatorLayout = ((r55) gv7Var.getValue()).a;
        coordinatorLayout.getClass();
        if (K(coordinatorLayout)) {
            setSupportActionBar((Toolbar) ((ix0) ((r55) gv7Var.getValue()).b.c).c);
            nc8 supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.Z(true);
            }
            gv7 gv7Var2 = this.M;
            sz8.b((RecyclerView) gv7Var2.getValue(), 7);
            ((RecyclerView) gv7Var2.getValue()).setLayoutManager(new PreCachingLinearLayoutManager(this, 1));
            ((RecyclerView) gv7Var2.getValue()).setAdapter((t55) this.N.getValue());
            sz8.c0((CircularProgressIndicator) this.L.getValue());
            sz8.W((RecyclerView) gv7Var2.getValue());
            String str = ry5.u;
            qy5.a(new px(this, 11));
        }
    }
}
