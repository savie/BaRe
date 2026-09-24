package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k49 extends h59 {
    public final j69 n;

    public k49(d80 d80Var, String str) {
        super(2);
        ly8.i(d80Var, "credential cannot be null");
        j69 j69VarL = y13.L(d80Var, str);
        j69VarL.q = false;
        this.n = j69VarL;
    }

    @Override // defpackage.h59
    public final String a() {
        return "reauthenticateWithCredentialWithData";
    }

    @Override // defpackage.h59
    public final void c(TaskCompletionSource taskCompletionSource, w49 w49Var) {
        this.g = new wc9(10, this, taskCompletionSource);
        w49Var.c(this.n, this.b);
    }

    @Override // defpackage.h59
    public final void e() {
        p49 p49VarO = ix0.o(this.c, this.i);
        if (!this.d.b.a.equalsIgnoreCase(p49VarO.b.a)) {
            b(new Status(17024, null, null, null));
        } else {
            ((lo9) this.e).b(this.h, p49VarO);
            f(new f0a(p49VarO));
        }
    }
}
