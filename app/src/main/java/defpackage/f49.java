package defpackage;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f49 extends h59 {
    public final au2 n;
    public final String o;

    public f49(au2 au2Var, String str) {
        super(2);
        ly8.i(au2Var, "credential cannot be null");
        this.n = au2Var;
        ly8.f(au2Var.a, "email cannot be null");
        ly8.f(au2Var.b, "password cannot be null");
        this.o = str;
    }

    @Override // defpackage.h59
    public final String a() {
        return "linkEmailAuthCredential";
    }

    @Override // defpackage.h59
    public final void c(TaskCompletionSource taskCompletionSource, w49 w49Var) {
        this.g = new wc9(10, this, taskCompletionSource);
        au2 au2Var = this.n;
        String str = au2Var.a;
        String str2 = au2Var.b;
        ly8.e(str2);
        String strQ = this.d.a.q();
        String strN = this.d.n();
        w49Var.getClass();
        ly8.e(str);
        ly8.e(str2);
        ly8.e(strQ);
        s79 s79Var = this.b;
        ly8.h(s79Var);
        ke keVar = w49Var.a;
        yf1 yf1Var = new yf1(s79Var, w49.b);
        keVar.getClass();
        ly8.e(str);
        ly8.e(str2);
        ly8.e(strQ);
        keVar.r(strQ, new gm1(keVar, str, str2, strN, this.o, yf1Var));
    }

    @Override // defpackage.h59
    public final void e() {
        p49 p49VarO = ix0.o(this.c, this.i);
        ((lo9) this.e).b(this.h, p49VarO);
        f(new f0a(p49VarO));
    }
}
