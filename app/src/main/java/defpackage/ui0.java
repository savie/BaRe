package defpackage;

import android.app.Activity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ui0 extends ws7 implements qt3 {
    public final /* synthetic */ zc6 a;
    public final /* synthetic */ xi0 b;
    public final /* synthetic */ Activity c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ ri0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ui0(zc6 zc6Var, xi0 xi0Var, Activity activity, boolean z, boolean z2, ri0 ri0Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = zc6Var;
        this.b = xi0Var;
        this.c = activity;
        this.d = z;
        this.e = z2;
        this.f = ri0Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new ui0(this.a, this.b, this.c, this.d, this.e, this.f, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        ui0 ui0Var = (ui0) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        ui0Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        boolean z;
        pj0 oj0Var;
        boolean z2;
        boolean z3;
        lg7.H(obj);
        zc6 zc6Var = this.a;
        boolean z4 = zc6Var.x;
        boolean z5 = zc6Var.q;
        Activity activity = this.c;
        xi0 xi0Var = this.b;
        boolean z6 = false;
        if (z4) {
            boolean z7 = zc6Var.r;
            boolean z8 = (z5 || z7) ? false : true;
            if (z5 || z7 || pe4.d(zc6Var.a, "ID_BACKUP_ALL_APPS")) {
                z2 = true;
                z3 = true;
            } else {
                z3 = false;
                z2 = true;
            }
            oj0Var = new mj0(xi0Var.c(activity, true, zc6Var.r, this.d, this.e, z8, z3, null, true, true, true, null, true, null, true, null, true, null), z7);
            z = z2;
        } else {
            z = true;
            boolean z9 = zc6Var.e;
            if (!z9) {
                g84.i(zc6Var, "expandForQuickItem() for ");
                return null;
            }
            if (z5 && z9) {
                z6 = true;
            }
            oj0Var = new oj0(xi0.a(xi0Var, activity, this.d, this.e), z6);
        }
        xi0Var.f(oj0Var, z, null, this.f);
        return be8.a;
    }
}
