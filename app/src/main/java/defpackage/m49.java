package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m49 extends h59 {
    public final String n;
    public final String o;
    public final String p;
    public final String q;

    public m49(String str, String str2, String str3, String str4) {
        super(2);
        ly8.f(str, "email cannot be null or empty");
        ly8.f(str2, "password cannot be null or empty");
        this.n = str;
        this.o = str2;
        this.p = str3;
        this.q = str4;
    }

    @Override // defpackage.h59
    public final String a() {
        return "reauthenticateWithEmailPasswordWithData";
    }

    @Override // defpackage.h59
    public final void c(TaskCompletionSource taskCompletionSource, w49 w49Var) {
        this.g = new wc9(10, this, taskCompletionSource);
        w49Var.d(this.n, this.o, this.p, this.q, this.b);
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
