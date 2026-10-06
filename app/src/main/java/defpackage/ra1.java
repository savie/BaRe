package defpackage;

import java.util.concurrent.CancellationException;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ra1 extends ws7 implements qt3 {
    public int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ sa1 c;
    public final /* synthetic */ long d;
    public final /* synthetic */ dd1 e;
    public final /* synthetic */ bt3 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ra1(sa1 sa1Var, long j, dd1 dd1Var, bt3 bt3Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.c = sa1Var;
        this.d = j;
        this.e = dd1Var;
        this.f = bt3Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        ra1 ra1Var = new ra1(this.c, this.d, this.e, this.f, jv1Var);
        ra1Var.b = obj;
        return ra1Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((ra1) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        boolean zBooleanValue;
        Object objK;
        be8 be8Var = be8.a;
        long j = this.d;
        sa1 sa1Var = this.c;
        xx1 xx1Var = (xx1) this.b;
        yx1 yx1Var = yx1.a;
        int i = this.a;
        try {
            try {
                if (i == 0) {
                    lg7.H(obj);
                    sa1Var.G().h(R.string.waiting_for_firebase_backend);
                    gg3 gg3Var = gg3.a;
                    this.b = xx1Var;
                    this.a = 1;
                    objK = gg3Var.k(20000L, this);
                    if (objK == yx1Var) {
                    }
                    return yx1Var;
                }
                if (i != 1) {
                    if (i == 2) {
                        lg7.H(obj);
                        return be8Var;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                objK = obj;
                zBooleanValue = ((Boolean) objK).booleanValue();
                if (j == sa1Var.O) {
                    sa1Var.G().f();
                }
            } catch (CancellationException unused) {
                if (j == sa1Var.O) {
                    sa1Var.G().f();
                }
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, sa1Var.r(), "Firebase wait failed: " + e.getMessage(), e, null, 8, null);
                if (j == sa1Var.O) {
                    sa1Var.G().f();
                }
                zBooleanValue = false;
            }
            final boolean z = zBooleanValue;
            if (j == sa1Var.O && l73.t(xx1Var)) {
                zn4 zn4Var = zn4.a;
                final sa1 sa1Var2 = this.c;
                final long j2 = this.d;
                final dd1 dd1Var = this.e;
                final bt3 bt3Var = this.f;
                bt3 bt3Var2 = new bt3() { // from class: qa1
                    @Override // defpackage.bt3
                    public final Object invoke() {
                        sa1 sa1Var3 = sa1Var2;
                        long j3 = j2;
                        boolean z2 = z;
                        dd1 dd1Var2 = dd1Var;
                        bt3 bt3Var3 = bt3Var;
                        be8 be8Var2 = be8.a;
                        if (j3 == sa1Var3.O) {
                            sa1Var3.L = null;
                            if (sa1Var3.isFinishing() || sa1Var3.isDestroyed()) {
                                if (!sa1Var3.isChangingConfigurations()) {
                                    sa1Var3.O().c = null;
                                }
                            } else {
                                if (z2) {
                                    wj1 wj1VarO = sa1Var3.O();
                                    wj1VarO.d = false;
                                    wj1VarO.e = null;
                                    sa1Var3.Q(dd1Var2, bt3Var3);
                                    return be8Var2;
                                }
                                gg3 gg3Var2 = gg3.a;
                                if (gg3.d != wf3.TIMED_OUT) {
                                    wj1 wj1VarO2 = sa1Var3.O();
                                    wj1VarO2.d = false;
                                    wj1VarO2.e = null;
                                    sa1Var3.O().c = null;
                                    return be8Var2;
                                }
                            }
                            return be8Var2;
                        }
                        return be8Var2;
                    }
                };
                this.b = null;
                this.a = 2;
                if (zn4.g(bt3Var2, this) == yx1Var) {
                    return yx1Var;
                }
            }
            return be8Var;
        } catch (Throwable th) {
            if (j == sa1Var.O) {
                sa1Var.G().f();
            }
            throw th;
        }
    }
}
