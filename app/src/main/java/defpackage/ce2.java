package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ce2 implements ps1 {
    public final Context a;
    public final xk6 b;

    public ce2(Context context, xk6 xk6Var) {
        this.a = context.getApplicationContext();
        this.b = xk6Var;
    }

    @Override // defpackage.du4
    public final void h() {
        lh7 lh7VarA = lh7.a(this.a);
        xk6 xk6Var = this.b;
        synchronized (lh7VarA) {
            lh7VarA.b.remove(xk6Var);
            if (lh7VarA.c && lh7VarA.b.isEmpty()) {
                kh7 kh7Var = lh7VarA.a;
                ((ConnectivityManager) kh7Var.c.get()).unregisterNetworkCallback(kh7Var.d);
                lh7VarA.c = false;
            }
        }
    }

    @Override // defpackage.du4
    public final void m() {
        lh7 lh7VarA = lh7.a(this.a);
        xk6 xk6Var = this.b;
        synchronized (lh7VarA) {
            lh7VarA.b.add(xk6Var);
            lh7VarA.b();
        }
    }

    @Override // defpackage.du4
    public final void e() {
    }
}
