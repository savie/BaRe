package org.swiftapps.swiftbackup.cloud.diagnostics;

import android.os.Bundle;
import android.util.Log;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.ae1;
import defpackage.ah;
import defpackage.be1;
import defpackage.bh;
import defpackage.cf2;
import defpackage.d76;
import defpackage.dd1;
import defpackage.dj;
import defpackage.ef1;
import defpackage.es;
import defpackage.f75;
import defpackage.ge1;
import defpackage.gs;
import defpackage.gv7;
import defpackage.h00;
import defpackage.h7;
import defpackage.hf1;
import defpackage.hl1;
import defpackage.i00;
import defpackage.ix0;
import defpackage.ix6;
import defpackage.iz1;
import defpackage.kf;
import defpackage.l90;
import defpackage.lf;
import defpackage.md1;
import defpackage.nc8;
import defpackage.ng6;
import defpackage.nq7;
import defpackage.ns;
import defpackage.o30;
import defpackage.ph6;
import defpackage.ps;
import defpackage.qb1;
import defpackage.qd1;
import defpackage.sa1;
import defpackage.sz8;
import defpackage.tb1;
import defpackage.v10;
import defpackage.vd1;
import defpackage.wb1;
import defpackage.wd1;
import defpackage.xd1;
import defpackage.z20;
import defpackage.zd1;
import defpackage.ze1;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class CloudDiagnosticsActivity extends sa1 {
    public static final /* synthetic */ int Z = 0;
    public final l90 P;
    public final gv7 R;
    public final gv7 S;
    public boolean W;
    public String X;
    public boolean Y;
    public final gv7 Q = new gv7(new ah(this, 14));
    public final gv7 T = new gv7(new kf(this, 15));
    public final gv7 U = new gv7(new lf(this, 12));
    public final gv7 V = new gv7(new vd1(this, 0));

    public CloudDiagnosticsActivity() {
        int i = 2;
        this.P = new l90(ph6.a(hf1.class), new z20(this, i), new ns(this, 5), new o30(this, i));
        int i2 = 11;
        this.R = new gv7(new bh(this, i2));
        this.S = new gv7(new d76(this, i2));
    }

    public final be1 U() {
        return (be1) this.Q.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public final hf1 V() {
        return (hf1) this.P.getValue();
    }

    public final void W() {
        U().I.setVisibility(8);
        U().J.setVisibility(0);
        U().b.setVisibility(0);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.e0(R.string.cloud_diagnostics);
        }
        this.W = false;
        A(false);
    }

    public final void X(String str, boolean z) {
        ((f75) this.S.getValue()).e.c(U().O, str);
        U().J.setVisibility(8);
        U().b.setVisibility(8);
        U().I.setVisibility(0);
        sz8.d0(U().f, z);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.e0(R.string.cloud_diagnostics_summary_title);
        }
        this.W = true;
        A(true);
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Iterable iterableG;
        String str;
        super.onCreate(bundle);
        setContentView(U().a);
        setSupportActionBar((Toolbar) ((ix0) U().c.c).c);
        nc8 supportActionBar = getSupportActionBar();
        int i = 1;
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.a0();
            supportActionBar.e0(R.string.cloud_diagnostics);
        }
        sz8.b(U().b, 7);
        sz8.b(U().H, 7);
        sz8.a(U().f);
        U().b.setBackgroundColor(p());
        RecyclerView recyclerView = U().G;
        recyclerView.setLayoutManager(new PreCachingLinearLayoutManager(this));
        gv7 gv7Var = this.R;
        recyclerView.setAdapter((ge1) gv7Var.getValue());
        int i2 = 0;
        recyclerView.setNestedScrollingEnabled(false);
        ng6 itemAnimator = recyclerView.getItemAnimator();
        cf2 cf2Var = itemAnimator instanceof cf2 ? (cf2) itemAnimator : null;
        if (cf2Var != null) {
            cf2Var.g = false;
        }
        int i3 = 2;
        ((ge1) gv7Var.getValue()).j = new ps(this, i3);
        U().n.setOnClickListener(new h7(this, 6));
        U().p.setOnClickListener(new h00(this, i));
        int i4 = 3;
        U().q.setOnClickListener(new i00(this, i4));
        U().d.setOnClickListener(new es(this, i4));
        U().e.setOnClickListener(new xd1(this, i2));
        U().k.setOnClickListener(new gs(this, i));
        U().f.setOnClickListener(new dj(this, 5));
        L(false, new vd1(this, 1));
        if (bundle != null) {
            this.X = bundle.getString("key_latest_report_markdown");
            this.Y = bundle.getBoolean("key_latest_report_has_failures");
            if (bundle.getBoolean("key_is_showing_results") && (str = this.X) != null && !nq7.j0(str)) {
                String str2 = this.X;
                if (str2 == null) {
                    str2 = "";
                }
                X(str2, this.Y);
            }
        }
        int i5 = 0;
        int i6 = 0;
        U().e.e(this, new wb1(i, new zd1(1, this, CloudDiagnosticsActivity.class, "renderState", "renderState(Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsVM$State;)V", i5, i6)));
        U().f.e(this, new wb1(i, new ae1(1, this, CloudDiagnosticsActivity.class, "handleEvent", "handleEvent(Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsVM$Event;)V", i5, i6)));
        tb1.e.e(this, new wb1(i, new wd1(this, 1)));
        tb1.c.e(this, new wb1(i, new v10(this, i3)));
        hf1 hf1VarU = U();
        ix6 ix6Var = hf1VarU.f;
        boolean zBooleanValue = ((Boolean) this.T.getValue()).booleanValue();
        Boolean bool = (Boolean) this.U.getValue();
        boolean zBooleanValue2 = bool.booleanValue();
        Boolean bool2 = (Boolean) this.V.getValue();
        bool2.getClass();
        ef1 ef1Var = hf1VarU.h;
        if (ef1Var != null) {
            hf1VarU.e.k(ef1Var);
            Boolean bool3 = hf1VarU.j;
            if (bool3 != null) {
                boolean zBooleanValue3 = bool3.booleanValue();
                ef1 ef1Var2 = hf1VarU.h;
                if (ef1Var2 == null || !ef1Var2.i) {
                    ix6Var.k(new ze1(zBooleanValue3));
                    return;
                }
                return;
            }
            return;
        }
        dd1 dd1VarF = qb1.f();
        if (zBooleanValue) {
            hf1VarU.k = bool;
            iterableG = iz1.h(dd1VarF, zBooleanValue2);
        } else {
            iterableG = iz1.g(dd1VarF);
        }
        ArrayList arrayList = new ArrayList(hl1.G0(iterableG, 10));
        Iterator it = iterableG.iterator();
        while (it.hasNext()) {
            arrayList.add(new md1((qd1) it.next()));
        }
        hf1VarU.q(hf1.m(dd1VarF, arrayList));
        if (zBooleanValue) {
            hf1VarU.j = bool2;
            String constant = dd1VarF.getConstant();
            ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((md1) it2.next()).a.a);
            }
            Log.i("CloudDiagnosticsSmoke", "START cloud=" + constant + " tests=" + arrayList2);
            Boolean bool4 = hf1VarU.j;
            if (bool4 != null) {
                boolean zBooleanValue4 = bool4.booleanValue();
                ef1 ef1Var3 = hf1VarU.h;
                if (ef1Var3 == null || !ef1Var3.i) {
                    ix6Var.k(new ze1(zBooleanValue4));
                }
            }
        }
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        if (isFinishing()) {
            U().l();
        }
        super.onDestroy();
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        bundle.putBoolean("key_is_showing_results", this.W);
        bundle.putString("key_latest_report_markdown", this.X);
        bundle.putBoolean("key_latest_report_has_failures", this.Y);
        super.onSaveInstanceState(bundle);
    }
}
