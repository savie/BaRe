package org.swiftapps.swiftbackup.cloud.connect.common;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.ac1;
import defpackage.ah;
import defpackage.ck;
import defpackage.cy0;
import defpackage.cz4;
import defpackage.d45;
import defpackage.dd1;
import defpackage.dk;
import defpackage.ec1;
import defpackage.ek;
import defpackage.fc1;
import defpackage.g7;
import defpackage.gj;
import defpackage.gv7;
import defpackage.hv1;
import defpackage.il0;
import defpackage.ix0;
import defpackage.kf;
import defpackage.l3;
import defpackage.l90;
import defpackage.lc1;
import defpackage.ls;
import defpackage.ms;
import defpackage.nc8;
import defpackage.ns;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.q;
import defpackage.qb1;
import defpackage.ra;
import defpackage.s35;
import defpackage.sz8;
import defpackage.tb1;
import defpackage.ub1;
import defpackage.vb1;
import defpackage.vr6;
import defpackage.xb1;
import defpackage.xs1;
import defpackage.y2;
import defpackage.zn4;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class CloudConnectActivity extends il0 {
    public static final /* synthetic */ int Q = 0;
    public final l90 K;
    public final gv7 N;
    public final gv7 P;
    public final gv7 L = new gv7(new gj(this, 13));
    public final gv7 M = new gv7(new ck(this, 12));
    public final gv7 O = new gv7(new ek(this, 13));

    public CloudConnectActivity() {
        int i = 4;
        this.K = new l90(ph6.a(lc1.class), new ms(this, 5), new ls(this, i), new ns(this, i));
        int i2 = 13;
        this.N = new gv7(new dk(this, i2));
        this.P = new gv7(new ah(this, i2));
    }

    public final boolean N() {
        return ((Boolean) this.N.getValue()).booleanValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public final lc1 V() {
        return (lc1) this.K.getValue();
    }

    public final void P(dd1 dd1Var) {
        Boolean boolValueOf = null;
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA = d45.a();
            if (mFirebaseUserA != null) {
                boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
            }
        } catch (Exception unused) {
        }
        if (pe4.d(boolValueOf, Boolean.TRUE)) {
            Const.M(this);
            return;
        }
        vr6.i$default(vr6.INSTANCE, r(), xs1.j("Starting to connect with ", dd1Var.getDisplayNameEn()), null, 4, null);
        if (N()) {
            Log.i("CloudRuntimeSmoke", "SIGN_IN_START cloud=" + dd1Var.getConstant());
        }
        M(R.string.processing);
        a0().i = dd1Var;
        a0().j = true;
        dd1Var.getStartConnectActivity().invoke(this, 2004);
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        ec1 ec1Var;
        if (i != 2004) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        H();
        dd1 dd1VarF = cy0.F(a0().i, intent != null ? intent.getStringExtra("org.swiftapps.swiftbackup.cloud.connect.extra.CLOUD_CONSTANT") : null);
        a0().i = dd1VarF;
        a0().j = false;
        if (i2 == -1) {
            ec1Var = dd1VarF != null ? ec1.CompleteConnection : ec1.ClearCloudPrefs;
        } else if (i2 != 179) {
            ec1Var = ec1.ClearCloudPrefs;
        } else {
            ec1Var = (dd1VarF == null ? -1 : fc1.a[dd1VarF.ordinal()]) == 1 ? ec1.RetryWithBrowserSignIn : ec1.ClearCloudPrefs;
        }
        int i3 = vb1.a[ec1Var.ordinal()];
        if (i3 == 1) {
            setResult(i2);
            tb1 tb1Var = tb1.a;
            qb1.r(dd1VarF);
            vr6.i$default(vr6.INSTANCE, r(), xs1.j("Connected with ", dd1VarF != null ? dd1VarF.getDisplayNameEn() : null), null, 4, null);
            lc1 lc1VarA0 = a0();
            zn4 zn4Var = zn4.a;
            zn4.c(new kf(lc1VarA0, 14));
            return;
        }
        if (i3 == 2) {
            vr6.w$default(vr6.INSTANCE, r(), "GMS Google Drive authorization failed. Retrying with browser sign-in.", null, 4, null);
            V.INSTANCE.setG(true);
            if (dd1VarF != null) {
                P(dd1VarF);
                return;
            }
            setResult(0);
            tb1 tb1Var2 = tb1.a;
            qb1.a();
            return;
        }
        if (i3 != 3) {
            q.j();
            return;
        }
        setResult((i2 == -1 && ec1Var == ec1.ClearCloudPrefs) ? 0 : i2);
        if (N()) {
            dd1 dd1Var = a0().i;
            String constant = dd1Var != null ? dd1Var.getConstant() : null;
            if (constant == null) {
                constant = "";
            }
            Log.i("CloudRuntimeSmoke", "SIGN_IN_RESULT status=FAIL cloud=" + constant + " resultCode=" + i2);
        }
        tb1 tb1Var3 = tb1.a;
        qb1.a();
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) throws Throwable {
        boolean z;
        super.onCreate(bundle);
        gv7 gv7Var = this.L;
        setContentView(((xb1) gv7Var.getValue()).a);
        B();
        Toolbar toolbar = (Toolbar) ((ix0) ((xb1) gv7Var.getValue()).b.c).c;
        setSupportActionBar(toolbar);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            toolbar.setOnClickListener(new g7(this, 5));
        }
        RecyclerView recyclerView = (RecyclerView) this.O.getValue();
        sz8.b(recyclerView, 7);
        recyclerView.setLayoutManager(new CloudConnectLayoutManager(this));
        recyclerView.setItemViewCacheSize(((l3) dd1.getEntries()).d());
        recyclerView.setItemAnimator(null);
        recyclerView.setAdapter((ac1) this.P.getValue());
        y2 y2Var = new y2(3, this, bundle);
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("cloud_connect_edit_warning_shown", false);
            if (z || N()) {
                y2Var.invoke();
                return;
            }
            s35 s35Var = new s35(this, R.style.M3AlertDialogTheme, new hv1(this, R.style.M3AlertDialogTheme), null);
            ((ra) s35Var.b).m = false;
            s35Var.v(R.string.note);
            s35Var.n(R.string.cloud_folder_edit_warning);
            s35Var.s(R.string.got_it, new ub1(this, y2Var));
            s35Var.m();
        } catch (ClassCastException unused) {
            z = false;
        }
    }

    @Override // defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        a0().f.k(((ac1) this.P.getValue()).e);
        dd1 dd1Var = a0().i;
        bundle.putString("checked_cloud_constant", dd1Var != null ? dd1Var.getConstant() : null);
        bundle.putBoolean("connect_activity_launched", a0().j);
    }
}
