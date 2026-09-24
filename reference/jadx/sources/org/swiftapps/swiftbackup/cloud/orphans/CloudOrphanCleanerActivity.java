package org.swiftapps.swiftbackup.cloud.orphans;

import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.b30;
import defpackage.bk;
import defpackage.c7;
import defpackage.cf2;
import defpackage.d7;
import defpackage.dk;
import defpackage.es;
import defpackage.gs;
import defpackage.gv7;
import defpackage.i00;
import defpackage.ix0;
import defpackage.l90;
import defpackage.ls;
import defpackage.mh1;
import defpackage.ms;
import defpackage.nc8;
import defpackage.ng6;
import defpackage.nh1;
import defpackage.ns;
import defpackage.oh1;
import defpackage.ph1;
import defpackage.ph6;
import defpackage.sa1;
import defpackage.sz8;
import defpackage.tb1;
import defpackage.wb1;
import defpackage.xd1;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class CloudOrphanCleanerActivity extends sa1 {
    public static final /* synthetic */ int S = 0;
    public final l90 P;
    public final gv7 Q = new gv7(new bk(this, 11));
    public final gv7 R = new gv7(new dk(this, 15));

    public CloudOrphanCleanerActivity() {
        int i = 6;
        this.P = new l90(ph6.a(a.class), new ms(this, i), new ls(this, 5), new ns(this, i));
    }

    public final ph1 U() {
        return (ph1) this.Q.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public final a U() {
        return (a) this.P.getValue();
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(U().a);
        setSupportActionBar((Toolbar) ((ix0) U().c.c).c);
        nc8 supportActionBar = getSupportActionBar();
        int i = 1;
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.a0();
            supportActionBar.e0(R.string.cloud_orphan_cleaner);
        }
        sz8.b(U().b, 7);
        U().b.setBackgroundColor(p());
        RecyclerView recyclerView = U().r;
        recyclerView.setLayoutManager(new PreCachingLinearLayoutManager(this));
        gv7 gv7Var = this.R;
        recyclerView.setAdapter((mh1) gv7Var.getValue());
        ng6 itemAnimator = recyclerView.getItemAnimator();
        cf2 cf2Var = itemAnimator instanceof cf2 ? (cf2) itemAnimator : null;
        if (cf2Var != null) {
            cf2Var.g = false;
        }
        ((mh1) gv7Var.getValue()).j = new b30(this, i);
        int i2 = 4;
        U().k.setOnClickListener(new i00(this, i2));
        U().f.setOnClickListener(new es(this, i2));
        U().e.setOnClickListener(new xd1(this, i));
        int i3 = 2;
        U().d.setOnClickListener(new gs(this, i3));
        int i4 = 0;
        int i5 = 0;
        U().e.e(this, new wb1(i3, new nh1(1, this, CloudOrphanCleanerActivity.class, "renderState", "renderState(Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerVM$State;)V", i4, i5)));
        U().f.e(this, new wb1(i3, new oh1(1, this, CloudOrphanCleanerActivity.class, "handleEvent", "handleEvent(Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerVM$Event;)V", i4, i5)));
        tb1.e.e(this, new wb1(i3, new c7(this, 10)));
        tb1.c.e(this, new wb1(i3, new d7(this, 8)));
        a aVarU = U();
        b bVar = aVarU.g;
        if (bVar != null) {
            aVarU.e.k(bVar);
        } else {
            aVarU.t(a.n(a.o()));
        }
    }
}
