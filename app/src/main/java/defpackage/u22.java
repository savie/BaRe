package defpackage;

import android.content.Context;
import android.os.CancellationSignal;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u22 {
    public final Context a;

    public u22(Context context) {
        context.getClass();
        this.a = context;
    }

    public static Object b(Context context, zv3 zv3Var, kv1 kv1Var) {
        o21 o21Var = new o21(1, nc8.D(kv1Var));
        o21Var.u();
        CancellationSignal cancellationSignal = new CancellationSignal();
        o21Var.w(new s22(cancellationSignal));
        nh nhVar = new nh(o21Var, 3);
        p22 p22Var = new p22();
        context.getClass();
        x22 x22VarM = ln5.m(new ln5(context), zv3Var);
        if (x22VarM == null) {
            nhVar.onError(new yv3("getCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"));
        } else {
            x22VarM.onGetCredential(context, zv3Var, cancellationSignal, p22Var, nhVar);
        }
        return o21Var.s();
    }

    public Object a(f91 f91Var, fz3 fz3Var) {
        o21 o21Var = new o21(1, nc8.D(fz3Var));
        o21Var.u();
        CancellationSignal cancellationSignal = new CancellationSignal();
        o21Var.w(new q22(cancellationSignal));
        z28 z28Var = new z28(o21Var, 10);
        p22 p22Var = new p22();
        x22 x22VarM = ln5.m(new ln5(this.a), f91Var.a);
        if (x22VarM == null) {
            z28Var.onError(new d91());
        } else {
            x22VarM.onClearCredential(f91Var, cancellationSignal, p22Var, z28Var);
        }
        Object objS = o21Var.s();
        return objS == yx1.a ? objS : be8.a;
    }
}
