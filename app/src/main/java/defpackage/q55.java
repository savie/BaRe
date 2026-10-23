package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.manage.ManageSpaceActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class q55 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ u55 b;
    public final /* synthetic */ ry5 c;
    public final /* synthetic */ ManageSpaceActivity d;
    public final /* synthetic */ int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q55(u55 u55Var, ry5 ry5Var, ManageSpaceActivity manageSpaceActivity, int i, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = u55Var;
        this.c = ry5Var;
        this.d = manageSpaceActivity;
        this.e = i;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new q55(this.b, this.c, this.d, this.e, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((q55) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        Boolean boolValueOf;
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            final lh6 lh6Var = new lh6();
            final u55 u55Var = this.b;
            int i2 = u55Var.a;
            int i3 = u55Var.a;
            ry5 ry5Var = this.c;
            if (i2 == 0) {
                String[] strArr = {ry5Var.g, ry5Var.j, ry5Var.l, ry5Var.s, ry5Var.q, ry5Var.n};
                for (int i4 = 0; i4 < 6; i4++) {
                    String str = strArr[i4];
                    boolean z = q63.d;
                    cy0.g(str);
                }
            }
            if (i3 == 1) {
                String str2 = ry5Var.h;
                String[] strArr2 = {str2, str2, ry5Var.t, ry5Var.k, ry5Var.m, ry5Var.r, ry5Var.o};
                for (int i5 = 0; i5 < 7; i5++) {
                    String str3 = strArr2[i5];
                    boolean z2 = q63.d;
                    cy0.g(str3);
                }
            }
            if (i3 == 3) {
                String str4 = ry5Var.c;
                str4.getClass();
                try {
                    if (str4.length() > 0 && !nq7.j0(str4)) {
                        cy0.e(new q63(str4, 2));
                    }
                } catch (Exception unused) {
                }
            }
            final ManageSpaceActivity manageSpaceActivity = this.d;
            if (i3 == 3 || i3 == 2) {
                int i6 = ManageSpaceActivity.O;
                try {
                    d45.b.getClass();
                    MFirebaseUser mFirebaseUserA = d45.a();
                    boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
                } catch (Exception unused2) {
                }
                if (!pe4.d(boolValueOf, Boolean.TRUE)) {
                    Context applicationContext = manageSpaceActivity.getApplicationContext();
                    applicationContext.getClass();
                    if (ai8.i(applicationContext)) {
                        vr6.i$default(vr6.INSTANCE, manageSpaceActivity.r(), "Clearing saved settings in cloud", null, 4, null);
                        cf3.c(re3.k().d("appSettings"), null);
                        cf3.c(re3.k().d("favoriteApps"), null);
                        cf3.c(re3.k().d("blacklistApps"), null);
                        cf3.c(re3.k().d("labelsData"), null);
                        cf3.c(re3.k().d("configs"), null);
                        cf3.c(re3.k().d("schedule_data"), null);
                    } else {
                        vr6.e$default(vr6.INSTANCE, manageSpaceActivity.r(), "Unable to clear saved settings in cloud due to internet issues", null, 4, null);
                    }
                }
            }
            if (i3 == 0) {
                lh6Var.a = ManageSpaceActivity.N(manageSpaceActivity, ry5Var, false);
            }
            if (i3 == 1) {
                lh6Var.a = ManageSpaceActivity.N(manageSpaceActivity, ry5Var, true);
            }
            zn4 zn4Var = zn4.a;
            final int i7 = this.e;
            bt3 bt3Var = new bt3() { // from class: p55
                @Override // defpackage.bt3
                public final Object invoke() {
                    ManageSpaceActivity manageSpaceActivity2 = manageSpaceActivity;
                    manageSpaceActivity2.H();
                    int i8 = u55Var.a;
                    be8 be8Var = be8.a;
                    if (i8 == 3 || i8 == 2) {
                        vr6.i$default(vr6.INSTANCE, manageSpaceActivity2.r(), "clearData called", null, 4, null);
                        Object systemService = manageSpaceActivity2.getSystemService("activity");
                        systemService.getClass();
                        ((ActivityManager) systemService).clearApplicationUserData();
                        return be8Var;
                    }
                    if (i8 == 0) {
                        Const.E(manageSpaceActivity2.r().concat(": Delete backups (id=0)"));
                        return be8Var;
                    }
                    lh6 lh6Var2 = lh6Var;
                    if (lh6Var2.a != null) {
                        t55 t55Var = (t55) manageSpaceActivity2.N.getValue();
                        jl0 jl0Var = (jl0) lh6Var2.a;
                        t55Var.getClass();
                        jl0Var.getClass();
                        ArrayList arrayListX1 = el1.x1(t55Var.e.a);
                        arrayListX1.set(i7, jl0Var);
                        t55Var.w(fm7.a(t55Var.e, el1.v1(arrayListX1), null, false, 30), false);
                    }
                    return be8Var;
                }
            };
            this.a = 1;
            Object objG = zn4.g(bt3Var, this);
            yx1 yx1Var = yx1.a;
            if (objG == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        return be8.a;
    }
}
