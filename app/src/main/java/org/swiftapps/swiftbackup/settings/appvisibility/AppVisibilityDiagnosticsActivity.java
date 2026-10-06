package org.swiftapps.swiftbackup.settings.appvisibility;

import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.cf2;
import defpackage.es;
import defpackage.gv7;
import defpackage.h00;
import defpackage.i00;
import defpackage.il0;
import defpackage.ix0;
import defpackage.k00;
import defpackage.kf;
import defpackage.l00;
import defpackage.l90;
import defpackage.ls;
import defpackage.m00;
import defpackage.ms;
import defpackage.n00;
import defpackage.nc8;
import defpackage.ne5;
import defpackage.ng6;
import defpackage.ns;
import defpackage.ov;
import defpackage.ph6;
import defpackage.q00;
import defpackage.sz8;
import defpackage.t00;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class AppVisibilityDiagnosticsActivity extends il0 {
    public static final /* synthetic */ int O = 0;
    public final l90 K = new l90(ph6.a(q00.class), new ms(this, 1), new ls(this, 1), new ns(this, 1));
    public final gv7 L = new gv7(new kf(this, 7));
    public final gv7 M = new gv7(new ov(1));
    public Integer N;

    public final m00 N() {
        return (m00) this.L.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public final q00 V() {
        return (q00) this.K.getValue();
    }

    public final void P(boolean z, boolean z2) {
        N().d.setEnabled(!z2);
        N().c.setEnabled(z);
        N().e.setEnabled(z);
        N().f.setEnabled(z);
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(N().a);
        setSupportActionBar((Toolbar) ((ix0) N().b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        int i = 1;
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.a0();
            supportActionBar.e0(R.string.app_visibility_diagnostics);
        }
        sz8.b(N().p, 7);
        RecyclerView recyclerView = N().n;
        recyclerView.setLayoutManager(new PreCachingLinearLayoutManager(this));
        recyclerView.setAdapter((t00) this.M.getValue());
        int i2 = 0;
        recyclerView.setNestedScrollingEnabled(false);
        ng6 itemAnimator = recyclerView.getItemAnimator();
        cf2 cf2Var = itemAnimator instanceof cf2 ? (cf2) itemAnimator : null;
        if (cf2Var != null) {
            cf2Var.g = false;
        }
        N().f.addTextChangedListener(new l00(this, i2));
        N().d.setOnClickListener(new h00(this, i2));
        N().c.setOnClickListener(new i00(this, i2));
        N().e.setOnClickListener(new es(this, i));
        this.N = bundle != null ? Integer.valueOf(bundle.getInt("app_visibility_scroll_y")) : null;
        V().e.e(this, new ne5(3, new k00(1, this, AppVisibilityDiagnosticsActivity.class, "renderState", "renderState(Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsVM$State;)V", 0, 0)));
        q00 q00VarV = V();
        String string = bundle != null ? bundle.getString("app_visibility_search_query") : null;
        if (q00VarV.g) {
            q00VarV.e.k(q00VarV.f);
            return;
        }
        q00VarV.g = true;
        n00 n00Var = q00VarV.f;
        if (string == null) {
            string = "";
        }
        q00VarV.f = n00.a(n00Var, null, string, false, null, 13);
        q00VarV.j();
    }

    @Override // defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        bundle.putInt("app_visibility_scroll_y", N().p.getScrollY());
        bundle.putString("app_visibility_search_query", V().f.b);
        super.onSaveInstanceState(bundle);
    }
}
