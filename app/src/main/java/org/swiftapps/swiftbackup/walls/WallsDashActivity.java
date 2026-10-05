package org.swiftapps.swiftbackup.walls;

import android.R;
import android.os.Bundle;
import android.transition.Fade;
import androidx.appcompat.widget.Toolbar;
import defpackage.as4;
import defpackage.cz;
import defpackage.dv;
import defpackage.gv7;
import defpackage.hp8;
import defpackage.hs4;
import defpackage.ix0;
import defpackage.j01;
import defpackage.j51;
import defpackage.l90;
import defpackage.nc8;
import defpackage.nj;
import defpackage.no5;
import defpackage.np8;
import defpackage.oo8;
import defpackage.ox;
import defpackage.ph6;
import defpackage.pp8;
import defpackage.qm;
import defpackage.ro8;
import defpackage.sz8;
import defpackage.u10;
import defpackage.us5;
import defpackage.v10;
import defpackage.vf;
import defpackage.wa;
import defpackage.wf;
import defpackage.zn4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class WallsDashActivity extends oo8 {
    public static final /* synthetic */ int W = 0;
    public wa U;
    public final l90 P = new l90(ph6.a(pp8.class), new wf(this, 11), new vf(this, 12), new j51(this, 8));
    public final gv7 Q = new gv7(new as4(this, 19));
    public final gv7 R = new gv7(new qm(22));
    public final gv7 S = new gv7(new hs4(this, 17));
    public final gv7 T = new gv7(new us5(this, 11));
    public final gv7 V = new gv7(new no5(this, 11));

    public final ro8 X() {
        return (ro8) this.Q.getValue();
    }

    @Override // defpackage.oo8
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final pp8 V() {
        return (pp8) this.P.getValue();
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(X().a);
        Fade fade = new Fade();
        fade.excludeTarget(R.id.statusBarBackground, true);
        fade.excludeTarget(R.id.navigationBarBackground, true);
        getWindow().setExitTransition(fade);
        getWindow().setEnterTransition(fade);
        setSupportActionBar((Toolbar) ((ix0) X().b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        sz8.b(X().c, 7);
        pp8 pp8VarA0 = a0();
        boolean z = pp8VarA0.g;
        boolean z2 = !z;
        np8 np8Var = pp8VarA0.l;
        if (np8Var != null) {
            pp8VarA0.i.p(np8Var);
        }
        pp8VarA0.l = new np8(pp8VarA0);
        if (!z) {
            pp8VarA0.s.k(hp8.a);
        }
        dv.i(pp8VarA0.i, z2, pp8VarA0.l, true, false, 8);
        pp8VarA0.l(!pp8VarA0.g);
        pp8VarA0.g = true;
        super.W();
        a0().u.e(this, new j01(3, new ox(this, 23)));
        a0().r.e(this, new j01(3, new cz(this, 21)));
        a0().s.e(this, new j01(3, new u10(this, 20)));
        a0().t.e(this, new j01(3, new v10(this, 22)));
    }

    @Override // defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onStart() {
        pp8 pp8VarA0 = a0();
        zn4 zn4Var = zn4.a;
        zn4.b(null, new nj(pp8VarA0, null, 2));
        super.onStart();
    }

    @Override // defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onStop() {
        wa waVar = this.U;
        if (waVar != null) {
            waVar.dismiss();
        }
        super.onStop();
    }
}
