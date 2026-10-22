package defpackage;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j49 extends h59 {
    public final au2 n;

    public j49(au2 au2Var) {
        super(2);
        ly8.i(au2Var, "credential cannot be null");
        this.n = au2Var;
    }

    @Override // defpackage.h59
    public final String a() {
        return "linkEmailAuthCredential";
    }

    @Override // defpackage.h59
    public final void c(TaskCompletionSource taskCompletionSource, w49 w49Var) {
        this.g = new wc9(10, this, taskCompletionSource);
        p49 p49Var = this.d;
        au2 au2Var = this.n;
        au2Var.getClass();
        au2Var.d = p49Var.a.q();
        au2Var.e = true;
        w49Var.b(new u59(au2Var, null, null), this.b);
    }

    @Override // defpackage.h59
    public final void e() {
        p49 p49VarO = ix0.o(this.c, this.i);
        ((lo9) this.e).b(this.h, p49VarO);
        f(new f0a(p49VarO));
    }
}
