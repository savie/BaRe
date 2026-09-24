package defpackage;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i49 extends h59 {
    public final j69 n;

    public i49(d80 d80Var) {
        super(2);
        ly8.i(d80Var, "credential cannot be null");
        this.n = y13.L(d80Var, null);
    }

    @Override // defpackage.h59
    public final String a() {
        return "linkFederatedCredential";
    }

    @Override // defpackage.h59
    public final void c(TaskCompletionSource taskCompletionSource, w49 w49Var) {
        this.g = new wc9(10, this, taskCompletionSource);
        String strQ = this.d.a.q();
        w49Var.getClass();
        ly8.e(strQ);
        j69 j69Var = this.n;
        ly8.h(j69Var);
        s79 s79Var = this.b;
        ly8.h(s79Var);
        ke keVar = w49Var.a;
        yf1 yf1Var = new yf1(s79Var, w49.b);
        keVar.getClass();
        ly8.e(strQ);
        keVar.r(strQ, new u00(keVar, j69Var, yf1Var));
    }

    @Override // defpackage.h59
    public final void e() {
        p49 p49VarO = ix0.o(this.c, this.i);
        ((lo9) this.e).b(this.h, p49VarO);
        f(new f0a(p49VarO));
    }
}
