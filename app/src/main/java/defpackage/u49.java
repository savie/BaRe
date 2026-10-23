package defpackage;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u49 extends h59 {
    public final hh8 n;

    public u49(hh8 hh8Var) {
        super(2);
        this.n = hh8Var;
    }

    @Override // defpackage.h59
    public final String a() {
        return "updateProfile";
    }

    @Override // defpackage.h59
    public final void c(TaskCompletionSource taskCompletionSource, w49 w49Var) {
        this.g = new wc9(10, this, taskCompletionSource);
        String strQ = this.d.a.q();
        w49Var.getClass();
        ly8.e(strQ);
        hh8 hh8Var = this.n;
        ly8.h(hh8Var);
        s79 s79Var = this.b;
        ly8.h(s79Var);
        ke keVar = w49Var.a;
        yf1 yf1Var = new yf1(s79Var, w49.b);
        keVar.getClass();
        ly8.e(strQ);
        keVar.r(strQ, new u94(keVar, hh8Var, yf1Var));
    }

    @Override // defpackage.h59
    public final void e() {
        ((lo9) this.e).b(this.h, ix0.o(this.c, this.i));
        f(null);
    }
}
