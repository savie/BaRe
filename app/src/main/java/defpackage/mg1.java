package defpackage;

import android.content.Context;
import java.util.concurrent.Executor;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mg1 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public int b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ mg1(Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.c = obj;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return new mg1((ng1) obj2, jv1Var, 0);
            case 1:
                return new mg1((ic2) obj2, jv1Var, 1);
            case 2:
                return new mg1((c64) obj2, jv1Var, 2);
            case 3:
                return new mg1((jo6) obj2, jv1Var, 3);
            case 4:
                return new mg1((kd7) obj2, jv1Var, 4);
            default:
                return new mg1((op8) obj2, jv1Var, 5);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        xx1 xx1Var = (xx1) obj;
        jv1 jv1Var = (jv1) obj2;
        switch (i) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
        }
        return ((mg1) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        Boolean boolValueOf;
        int i = this.a;
        int i2 = 0;
        int i3 = 2;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        yx1 yx1Var = yx1.a;
        int i4 = 1;
        switch (i) {
            case 0:
                ng1 ng1Var = (ng1) obj2;
                int i5 = this.b;
                if (i5 == 0) {
                    lg7.H(obj);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    qo0 qo0Var = ng1Var.d;
                    if (qo0Var == null) {
                        pe4.F("activityVM");
                        throw null;
                    }
                    qo0Var.h(R.string.processing);
                    tb1 tb1Var = tb1.a;
                    qb1.a();
                    tb1 tb1VarC = qb1.c();
                    tb1VarC.getClass();
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new sb1(tb1VarC, true, null));
                    long jM = Const.m(jCurrentTimeMillis, 1000L);
                    this.b = 1;
                    if (yc9.j(jM, this) == yx1Var) {
                        return yx1Var;
                    }
                } else {
                    if (i5 != 1) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    lg7.H(obj);
                }
                int i6 = AppListActivity.q0;
                y13.E(bt.LOCAL);
                qo0 qo0Var2 = ng1Var.d;
                if (qo0Var2 != null) {
                    qo0Var2.f();
                    return be8Var;
                }
                pe4.F("activityVM");
                throw null;
            case 1:
                ic2 ic2Var = (ic2) obj2;
                int i7 = this.b;
                if (i7 == 0) {
                    lg7.H(obj);
                    kb2 kb2Var = ic2Var.i;
                    this.b = 1;
                    Object objK = ((bn1) kb2Var.b).k(this);
                    if (objK != yx1Var) {
                        objK = be8Var;
                    }
                    if (objK != yx1Var) {
                    }
                    return yx1Var;
                }
                if (i7 != 1) {
                    if (i7 == 2) {
                        lg7.H(obj);
                        return be8Var;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                ji3 ji3VarE = ic2Var.g().e();
                boolean z = ji3VarE instanceof du3;
                lv2 lv2Var = lv2.a;
                pw0 pw0Var = pw0.b;
                ji3 ji3VarJ = z ? ((du3) ji3VarE).j(lv2Var, 0, pw0Var) : new p41(ji3VarE, lv2Var, 0, pw0Var);
                ub2 ub2Var = new ub2(ic2Var, i2);
                this.b = 2;
                if (ji3VarJ.t(ub2Var, this) != yx1Var) {
                    return be8Var;
                }
                return yx1Var;
            case 2:
                c64 c64Var = (c64) obj2;
                int i8 = this.b;
                if (i8 == 0) {
                    lg7.H(obj);
                    tb1 tb1Var2 = tb1.a;
                    if (qb1.m()) {
                        qb1.c().n();
                    }
                    Const r14 = Const.a;
                    r14.e();
                    ix6 ix6Var = c64.l;
                    zc2 zc2Var = (zc2) c64Var.h.getValue();
                    zc2Var.getClass();
                    boolean z2 = g42.a;
                    String strA = g42.a("AQKWTKIXFyf2dDVVP0gjLt6JxW675+o51FsDiETa0sRWeokVcIuPtf+k4Nrw1ngtETihDLu6irASSZG0SJFEddFPN7MFugdcjaq5jh6ERJBUy8rFrf/O2L8tYfvt0pOu1pGRz4k0gJQCIqNQNOvny78GcIuXRxeYRyK272pyGQ==");
                    if (pe4.d(V.INSTANCE.getC(), Boolean.TRUE)) {
                        r14.Q(strA);
                    }
                    ts1 ts1Var = new ts1(strA);
                    zc2Var.c(ts1Var);
                    c64Var.i = ts1Var;
                    zn4 zn4Var2 = zn4.a;
                    zn4.b(null, new b64(c64Var, null));
                    try {
                        d45.b.getClass();
                        MFirebaseUser mFirebaseUserA = d45.a();
                        boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
                        break;
                    } catch (Exception unused) {
                    }
                    try {
                        if (!pe4.d(boolValueOf, Boolean.TRUE)) {
                            re3.b().d("multithreaded_downloads").c(new sl4());
                        }
                        break;
                    } catch (Exception unused2) {
                    }
                    yn7 yn7Var = zn7.q;
                    zn7 zn7VarD = yn7Var.d();
                    if (Const.b(zn7VarD, 6)) {
                        zn7VarD.getClass();
                        boolean z3 = q63.d;
                        String str = ry5.u;
                        lx lxVar = new lx(i4, new jx(i3), new q63(qy5.d(zn7VarD), ".trash/atomic-delete", 2));
                        Object value = m70.a.getValue();
                        value.getClass();
                        ((Executor) value).execute(new j70(lxVar, i2));
                        return be8Var;
                    }
                    SwiftApp.Companion companion = SwiftApp.d;
                    Context contextC = SwiftApp.Companion.c();
                    zn4 zn4Var3 = zn4.a;
                    zn4.e(new l30(15, contextC, "File read/write check failed! Please restart the app."));
                    yn7Var.h(null);
                    this.b = 1;
                    if (yc9.j(3000L, this) == yx1Var) {
                        return yx1Var;
                    }
                } else {
                    if (i8 != 1) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    lg7.H(obj);
                }
                mp6 mp6Var = mp6.a;
                if (!mp6.f()) {
                    Const.g("File read/write checks failed", true);
                    throw null;
                }
                dz5 dz5Var = dz5.a;
                dz5.p();
                Const.g("File read/write checks failed after revoking storage permission", true);
                throw null;
            case 3:
                int i9 = this.b;
                if (i9 == 0) {
                    lg7.H(obj);
                    this.b = 1;
                    return jo6.l((jo6) obj2, this) == yx1Var ? yx1Var : be8Var;
                }
                if (i9 == 1) {
                    lg7.H(obj);
                    return be8Var;
                }
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            case 4:
                kd7 kd7Var = (kd7) obj2;
                int i10 = this.b;
                if (i10 != 0) {
                    if (i10 == 1) {
                        lg7.H(obj);
                        return be8Var;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                ro roVar = new ro(7, kd7Var.e.getData(), new hd7(kd7Var, null));
                ub2 ub2Var2 = new ub2(kd7Var, i4);
                this.b = 1;
                return roVar.t(ub2Var2, this) == yx1Var ? yx1Var : be8Var;
            default:
                int i11 = this.b;
                if (i11 != 0) {
                    if (i11 == 1) {
                        lg7.H(obj);
                        return be8Var;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                sv7 sv7VarA = tv7.a();
                zn4 zn4Var4 = zn4.a;
                kg kgVar = new kg(16, (op8) obj2, sv7VarA);
                this.b = 1;
                return zn4.g(kgVar, this) == yx1Var ? yx1Var : be8Var;
        }
    }
}
