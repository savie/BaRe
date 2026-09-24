package org.swiftapps.swiftbackup.notice;

import android.content.Context;
import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import defpackage.gv7;
import defpackage.il0;
import defpackage.ix0;
import defpackage.k3;
import defpackage.n55;
import defpackage.nc8;
import defpackage.nj2;
import defpackage.no5;
import defpackage.oo5;
import defpackage.ps0;
import defpackage.qb5;
import defpackage.qo0;
import defpackage.qo5;
import defpackage.so5;
import defpackage.sz8;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class NoticeListActivity extends il0 {
    public static final /* synthetic */ int N = 0;
    public final gv7 K = new gv7(new no5(this, 0));
    public final gv7 L = new gv7(new qb5(this, 4));
    public final gv7 M = new gv7(new n55(this, 3));

    @Override // defpackage.il0
    public final boolean D() {
        return false;
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
        setContentView(((oo5) gv7Var.getValue()).a);
        setSupportActionBar((Toolbar) ((ix0) ((oo5) gv7Var.getValue()).b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) this.L.getValue();
        sz8.b(quickRecyclerView, 7);
        Context context = quickRecyclerView.getContext();
        context.getClass();
        quickRecyclerView.setLayoutManager(new PreCachingLinearLayoutManager(context, 1));
        qo5 qo5Var = (qo5) this.M.getValue();
        qo5Var.n = new nj2(4, qo5Var, this);
        quickRecyclerView.setAdapter(qo5Var);
        so5.a.a();
        so5.d.e(this, new ps0(3, new k3(this, 16)));
    }
}
