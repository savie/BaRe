package org.swiftapps.swiftbackup.messagescalls.conversationsview;

import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.ej;
import defpackage.gv7;
import defpackage.il0;
import defpackage.ix0;
import defpackage.k3;
import defpackage.l90;
import defpackage.lf;
import defpackage.ms;
import defpackage.nc8;
import defpackage.ns;
import defpackage.ph6;
import defpackage.pu;
import defpackage.qo0;
import defpackage.rv1;
import defpackage.sv1;
import defpackage.sz8;
import defpackage.uv1;
import defpackage.wv1;
import defpackage.z20;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ConversationsActivity extends il0 {
    public static final /* synthetic */ int O = 0;
    public final l90 K = new l90(ph6.a(wv1.class), new ns(this, 10), new ms(this, 9), new z20(this, 5));
    public final gv7 L = new gv7(new lf(this, 17));
    public final gv7 M = new gv7(new ej(this, 14));
    public final gv7 N = new gv7(new pu(2));

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 V() {
        return (wv1) this.K.getValue();
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        finish();
        gv7 gv7Var = this.L;
        setContentView(((sv1) gv7Var.getValue()).a);
        setSupportActionBar((Toolbar) ((ix0) ((sv1) gv7Var.getValue()).b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.e0(R.string.conversations);
        }
        RecyclerView recyclerView = (RecyclerView) this.M.getValue();
        sz8.b(recyclerView, 7);
        recyclerView.setLayoutManager(new PreCachingLinearLayoutManager(this));
        recyclerView.setAdapter((uv1) this.N.getValue());
        ((wv1) this.K.getValue()).e.e(this, new rv1(0, new k3(this, 9)));
    }
}
