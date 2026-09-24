package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.transition.ChangeBounds;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.o;
import java.util.Arrays;
import org.swiftapps.swiftbackup.tasks.TaskService;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class il0 extends k28 {
    public fl0 G;
    public final gv7 H;
    public final l90 p;
    public final gv7 q;
    public boolean r;
    public el0 t;
    public mt3 y;
    public final boolean n = true;
    public final int x = 14452;
    public final gv7 I = new gv7(new fj(this, 12));
    public final dl0 J = new dl0(this);

    public il0() {
        int i = 1;
        this.p = new l90(ph6.a(qo0.class), new gl0(this, 0), new q30(this, i), new uf(this, i));
        int i2 = 9;
        this.q = new gv7(new lf(this, i2));
        this.H = new gv7(new ej(this, i2));
    }

    public static void w(ViewGroup viewGroup, Transition transition, Class... clsArr) {
        viewGroup.getClass();
        transition.getClass();
        for (Class cls : clsArr) {
            transition.excludeTarget(cls, true);
        }
        TransitionManager.beginDelayedTransition(viewGroup, transition);
        viewGroup.requestLayout();
    }

    public final void A(boolean z) {
        fl0 fl0Var = this.G;
        if (fl0Var != null) {
            fl0Var.setEnabled(z);
        }
    }

    public final void B() {
        io4.j(r(), null, false, new kf(this, 11), 14);
    }

    public o C() {
        return null;
    }

    public boolean D() {
        return this.n;
    }

    public final o E(Bundle bundle) {
        if (bundle != null) {
            ur3 supportFragmentManager = getSupportFragmentManager();
            supportFragmentManager.getClass();
            String string = bundle.getString("saved_fragment");
            if (string != null) {
                o oVarB = supportFragmentManager.c.b(string);
                if (oVarB != null) {
                    return oVarB;
                }
                supportFragmentManager.f0(new IllegalStateException("Fragment no longer exists for key saved_fragment: unique id ".concat(string)));
                throw null;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: F */
    public abstract qo0 V();

    public final qo0 G() {
        qo0 qo0VarF = V();
        return qo0VarF == null ? (qo0) this.p.getValue() : qo0VarF;
    }

    public final void H() {
        G().f();
    }

    public final void I(mt3 mt3Var) {
        this.y = mt3Var;
        le7.g(this.J);
        dl0 dl0Var = this.J;
        synchronized (le7.i) {
            le7.k.add(new je7(dl0Var));
        }
    }

    public final void J(mt3 mt3Var) {
        gv7 gv7Var = qe7.a;
        if (!le7.f()) {
            mt3Var.invoke(Boolean.FALSE);
            return;
        }
        I(mt3Var);
        boolean z = le7.f;
        int i = this.x;
        if (z || qe7.a() < 11) {
            requestPermissions(new String[]{"moe.shizuku.manager.permission.API_V23"}, i);
            return;
        }
        try {
            ((f94) le7.h()).k(i);
        } catch (RemoteException e) {
            y5.k(e);
        }
    }

    public final boolean K(View view) {
        view.getClass();
        try {
            setContentView(view);
            return true;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, r(), yc9.g0(e), null, 4, null);
            int i = 15;
            if (nq7.Z(io4.b(e), "InflateException", false)) {
                Context applicationContext = getApplicationContext();
                applicationContext.getClass();
                zn4 zn4Var = zn4.a;
                zn4.e(new l30(i, applicationContext, "Theme/Overlay caused a crash"));
            } else {
                Context applicationContext2 = getApplicationContext();
                applicationContext2.getClass();
                String strB = io4.b(e);
                zn4 zn4Var2 = zn4.a;
                zn4.e(new l30(i, applicationContext2, strB));
            }
            finish();
            return false;
        }
    }

    public final void L(boolean z, bt3 bt3Var) {
        fl0 fl0Var = new fl0(z, bt3Var);
        this.G = fl0Var;
        zs5 onBackPressedDispatcher = getOnBackPressedDispatcher();
        onBackPressedDispatcher.getClass();
        f41.a(onBackPressedDispatcher.b().c, fl0Var.createNavigationEventHandler$activity(new ts5(null, fl0Var)));
    }

    public final void M(int i) {
        G().h(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
    
        if (defpackage.d45.a() != null) goto L18;
     */
    @Override // defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r10) {
        /*
            Method dump skipped, instruction units count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.il0.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        try {
            if (menu instanceof fc5) {
                sz8.n(this, (fc5) menu, 8.0f);
            }
        } catch (Exception unused) {
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public void onDestroy() {
        hx0.b.l(this);
        le7.g(this.J);
        el0 el0Var = this.t;
        if (el0Var != null) {
            ((ChangeBounds) this.I.getValue()).removeListener(el0Var);
        }
        super.onDestroy();
    }

    @qr7
    public final void onForcedConfigChange(tq3 tq3Var) {
        tq3Var.getClass();
        Log.d(r(), "onForcedConfigChange called, Recreating activity (change=" + tq3Var + ")");
        recreate();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        getOnBackPressedDispatcher().b().a();
        return true;
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        strArr.getClass();
        iArr.getClass();
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (pe4.d(strArr[i2], "moe.shizuku.manager.permission.API_V23")) {
                this.J.a(iArr[i2]);
                return;
            }
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // defpackage.io1, defpackage.ho1, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        o oVarC = C();
        if (oVarC != null) {
            getSupportFragmentManager().U(bundle, oVarC);
        }
    }

    @Override // defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public void onStart() {
        if (!(this instanceof TaskActivity)) {
            hy7 hy7Var = hy7.a;
            gz7 gz7Var = TaskService.b;
            if (TaskService.b.isRunning()) {
                vr6.w$default(vr6.INSTANCE, r(), "Task is already running, showing TaskActivity now", null, 4, null);
                ai8.q(this, TaskActivity.class);
            }
        }
        super.onStart();
    }

    public final void x(ViewGroup viewGroup, Class... clsArr) {
        viewGroup.getClass();
        if (this.r) {
            return;
        }
        w(viewGroup, (ChangeBounds) this.I.getValue(), (Class[]) Arrays.copyOf(clsArr, clsArr.length));
    }

    public final void y(Class... clsArr) {
        io4.j(r(), null, false, new cv(1, this, clsArr), 14);
    }

    public final void z() {
        getOnBackPressedDispatcher().b().a();
    }
}
