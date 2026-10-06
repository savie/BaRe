package defpackage;

import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h49 extends h59 {
    public final xz5 n;

    public h49(xz5 xz5Var) {
        super(2);
        ly8.i(xz5Var, "credential cannot be null");
        this.n = xz5Var;
    }

    @Override // defpackage.h59
    public final String a() {
        return "linkPhoneAuthCredential";
    }

    @Override // defpackage.h59
    public final void c(TaskCompletionSource taskCompletionSource, w49 w49Var) {
        this.g = new wc9(10, this, taskCompletionSource);
        String strQ = this.d.a.q();
        n69 n69VarU = ly8.U(this.n);
        ly8.e(strQ);
        w49Var.getClass();
        s79 s79Var = this.b;
        ly8.h(s79Var);
        ly8.e(strQ);
        ke keVar = w49Var.a;
        yf1 yf1Var = new yf1(s79Var, w49.b);
        keVar.getClass();
        ly8.e(strQ);
        s02 s02Var = new s02();
        s02Var.a = n69VarU;
        s02Var.b = yf1Var;
        Objects.requireNonNull(keVar);
        s02Var.c = keVar;
        keVar.r(strQ, s02Var);
    }

    @Override // defpackage.h59
    public final void e() {
        p49 p49VarO = ix0.o(this.c, this.i);
        ((lo9) this.e).b(this.h, p49VarO);
        f(new f0a(p49VarO));
    }
}
