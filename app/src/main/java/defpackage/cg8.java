package defpackage;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class cg8 implements Runnable {
    public final /* synthetic */ fg8 a;
    public final /* synthetic */ oe0 b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Runnable d;

    public /* synthetic */ cg8(fg8 fg8Var, oe0 oe0Var, int i, Runnable runnable) {
        this.a = fg8Var;
        this.b = oe0Var;
        this.c = i;
        this.d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final oe0 oe0Var = this.b;
        final int i = this.c;
        Runnable runnable = this.d;
        final fg8 fg8Var = this.a;
        mw6 mw6Var = fg8Var.f;
        try {
            mw6 mw6Var2 = fg8Var.c;
            Objects.requireNonNull(mw6Var2);
            mw6Var.m(new rn1(mw6Var2, 8));
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) fg8Var.a.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                mw6Var.m(new dv7() { // from class: dg8
                    @Override // defpackage.dv7
                    public final Object g() {
                        fg8Var.d.d(oe0Var, i + 1, false);
                        return null;
                    }
                });
            } else {
                fg8Var.a(oe0Var, i);
            }
        } catch (cv7 unused) {
            fg8Var.d.d(oe0Var, i + 1, false);
        } finally {
            runnable.run();
        }
    }
}
