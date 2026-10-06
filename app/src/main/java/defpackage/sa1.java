package defpackage;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class sa1 extends il0 {
    public final l90 K = new l90(ph6.a(wj1.class), new vf(this, 3), new uf(this, 5), new wf(this, 2));
    public bl7 L;
    public wa M;
    public boolean N;
    public volatile long O;

    public static void R(sa1 sa1Var, dd1 dd1Var, bt3 bt3Var, int i) {
        if ((i & 1) != 0) {
            dd1Var = null;
        }
        if ((i & 2) != 0) {
            bt3Var = null;
        }
        wj1 wj1VarO = sa1Var.O();
        if (bt3Var != null) {
            wj1VarO.c = bt3Var;
        }
        if (!Const.d(sa1Var)) {
            sa1Var.O().c = null;
            return;
        }
        gg3 gg3Var = gg3.a;
        if (!gg3.f() || gg3.b == xf3.CONNECTED) {
            sa1Var.Q(dd1Var, bt3Var);
        } else {
            sa1Var.T(dd1Var, bt3Var);
        }
    }

    public final boolean N(boolean z) {
        if (this.L == null) {
            return false;
        }
        this.O++;
        bl7 bl7Var = this.L;
        if (bl7Var != null) {
            bl7Var.cancel(null);
        }
        this.L = null;
        if (z) {
            G().f();
        }
        return true;
    }

    public final wj1 O() {
        return (wj1) this.K.getValue();
    }

    public final void P(wf3 wf3Var) {
        if (O().d) {
            gg3 gg3Var = gg3.a;
            if (!gg3.f()) {
                N(true);
                wj1 wj1VarO = O();
                wj1VarO.d = false;
                wj1VarO.e = null;
                gg3Var.d();
                return;
            }
            int i = pa1.a[wf3Var.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    G().f();
                    return;
                } else if (i == 3) {
                    G().h(R.string.waiting_for_firebase_backend);
                    return;
                } else {
                    q.j();
                    return;
                }
            }
            N(true);
            wj1 wj1VarO2 = O();
            wj1VarO2.d = false;
            wj1VarO2.e = null;
            gg3Var.d();
            vr6.e$default(vr6.INSTANCE, r(), "Firebase not connected after waiting. Showing tips to user.", null, 4, null);
            S();
            O().c = null;
        }
    }

    public final void Q(dd1 dd1Var, bt3 bt3Var) {
        tb1 tb1Var = tb1.a;
        if (qb1.m()) {
            wj1 wj1VarO = O();
            bt3 bt3Var2 = wj1VarO.c;
            if (bt3Var2 != null) {
                bt3Var2.invoke();
            }
            wj1VarO.c = null;
            return;
        }
        if (!Const.d(this)) {
            O().c = null;
            return;
        }
        wj1 wj1VarO2 = O();
        if (bt3Var != null) {
            wj1VarO2.c = bt3Var;
        }
        Intent intentPutExtra = new Intent(this, (Class<?>) CloudConnectActivity.class).putExtra("cloud_constant", dd1Var != null ? dd1Var.getConstant() : null);
        intentPutExtra.getClass();
        startActivityForResult(intentPutExtra, 2004);
    }

    public final void S() {
        gg3 gg3Var = gg3.a;
        if (!gg3.f()) {
            this.N = false;
            return;
        }
        wa waVar = this.M;
        if (waVar == null || !waVar.isShowing()) {
            this.N = true;
            wa waVarH = gg3.h(this, Integer.valueOf(R.string.got_it), new ah(this, 12), null, 16);
            this.M = waVarH;
            if (waVarH != null) {
                waVarH.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: oa1
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        this.a.N = false;
                    }
                });
            }
        }
    }

    public final void T(dd1 dd1Var, bt3 bt3Var) {
        vr6.w$default(vr6.INSTANCE, r(), "Firebase not connected. Waiting before continuing cloud action.", null, 4, null);
        N(false);
        wj1 wj1VarO = O();
        wj1VarO.d = true;
        wj1VarO.e = dd1Var;
        this.O++;
        long j = this.O;
        zn4 zn4Var = zn4.a;
        this.L = zn4.b(null, new ra1(this, j, dd1Var, bt3Var, null));
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 2004) {
            boolean z = i2 == -1;
            Log.d(r(), "onActivityResult: driveConnected = " + z);
            wj1 wj1VarO = O();
            qo0 qo0VarG = G();
            zn4 zn4Var = zn4.a;
            zn4.b(null, new vj1(qo0VarG, z, wj1VarO, null));
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        g00 g00Var = g00.a;
        g00.C();
        if (bundle != null) {
            tb1 tb1Var = tb1.a;
            if (qb1.m()) {
                ua1 ua1Var = ua1.g;
                if (!ua1Var.b) {
                    dv.i(ua1Var, true, null, false, false, 6);
                }
            }
        }
        int i = 1;
        if (bundle != null && bundle.getBoolean("KEY_FIREBASE_ERROR_DIALOG_SHOWING", false)) {
            this.N = true;
            zn4 zn4Var = zn4.a;
            zn4.e(new u31(this, i));
        }
        gg3 gg3Var = gg3.a;
        gg3.e.e(this, new i7(i, new k3(new g70(1, this, sa1.class, "onFirebaseBackendWaitState", "onFirebaseBackendWaitState(Lorg/swiftapps/swiftbackup/common/FirebaseConnectionWatcher$BackendWaitState;)V", 0, 1), 12)));
        if (O().d && this.L == null) {
            if (pa1.a[gg3.d.ordinal()] == 1) {
                P(wf3.TIMED_OUT);
            } else {
                T(O().e, O().c);
            }
        }
    }

    @Override // defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public void onDestroy() {
        if (N(true) && !isChangingConfigurations()) {
            wj1 wj1VarO = O();
            wj1VarO.d = false;
            wj1VarO.e = null;
            gg3.a.d();
            O().c = null;
        }
        super.onDestroy();
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0013  */
    @Override // defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        boolean z;
        wa waVar;
        bundle.getClass();
        if (this.N && (waVar = this.M) != null) {
            z = waVar.isShowing();
        }
        bundle.putBoolean("KEY_FIREBASE_ERROR_DIALOG_SHOWING", z);
        super.onSaveInstanceState(bundle);
    }
}
