package defpackage;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ef2 implements au4 {
    public final lu2 a;
    public final au4 b;

    public ef2(lu2 lu2Var, au4 au4Var) {
        this.a = lu2Var;
        this.b = au4Var;
    }

    @Override // defpackage.au4
    public final void g(fu4 fu4Var, rt4 rt4Var) {
        switch (df2.a[rt4Var.ordinal()]) {
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
                break;
            case 3:
                lu2 lu2Var = this.a;
                (Build.VERSION.SDK_INT >= 28 ? aq1.a(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new pu2(), 500L);
                lu2Var.a.f(lu2Var);
                break;
            case 7:
                c6.f("ON_ANY must not been send by anybody");
                return;
            default:
                q.j();
                return;
        }
        au4 au4Var = this.b;
        if (au4Var != null) {
            au4Var.g(fu4Var, rt4Var);
        }
    }
}
