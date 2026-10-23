package defpackage;

import android.text.TextUtils;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e49 extends h59 {
    public final /* synthetic */ int n = 1;
    public final Object o;

    public e49(au2 au2Var, String str) {
        super(2);
        this.o = new u59(au2Var, null, str);
    }

    @Override // defpackage.h59
    public final String a() {
        switch (this.n) {
            case 0:
                return "getAccessToken";
            default:
                return "sendSignInLinkToEmail";
        }
    }

    @Override // defpackage.h59
    public final void c(TaskCompletionSource taskCompletionSource, w49 w49Var) {
        int i = this.n;
        s79 s79Var = this.b;
        Object obj = this.o;
        int i2 = 10;
        switch (i) {
            case 0:
                this.g = new wc9(i2, this, taskCompletionSource);
                String str = (String) obj;
                w49Var.getClass();
                ly8.e(str);
                ly8.h(s79Var);
                ke keVar = w49Var.a;
                yf1 yf1Var = new yf1(s79Var, w49.b);
                keVar.getClass();
                ly8.e(str);
                ig9 ig9Var = new ig9(str, 2);
                g59 g59Var = (g59) keVar.b;
                zq8 zq8Var = new zq8(keVar, yf1Var);
                c59 c59Var = g59Var.c;
                ms8.U(c59Var.r("/token", g59Var.f), ig9Var, zq8Var, new b69(), (xt1) c59Var.b);
                break;
            default:
                this.g = new wc9(i2, this, taskCompletionSource);
                w49Var.b((u59) obj, s79Var);
                break;
        }
    }

    @Override // defpackage.h59
    public final void e() {
        switch (this.n) {
            case 0:
                if (TextUtils.isEmpty(this.h.a)) {
                    b69 b69Var = this.h;
                    String str = (String) this.o;
                    b69Var.getClass();
                    ly8.e(str);
                    b69Var.a = str;
                }
                ((lo9) this.e).b(this.h, this.d);
                f(q99.a(this.h.b));
                break;
            default:
                p49 p49VarO = ix0.o(this.c, this.i);
                ((lo9) this.e).b(this.h, p49VarO);
                f(new f0a(p49VarO));
                break;
        }
    }

    public e49(String str) {
        super(1);
        ly8.f(str, "refresh token cannot be null");
        this.o = str;
    }
}
