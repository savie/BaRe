package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vb implements Runnable {
    public final /* synthetic */ int a;
    public final Object b;
    public final Object c;

    public vb(ny2 ny2Var) {
        this.a = 1;
        this.c = ny2Var;
        this.b = new ix0(4, false);
    }

    @Override // java.lang.Runnable
    public final void run() {
        n74 uv9Var;
        switch (this.a) {
            case 0:
                throw new RuntimeException((String) this.b, (Throwable) this.c);
            case 1:
                wy5 wy5VarG = ((ix0) this.b).g();
                if (wy5VarG != null) {
                    ((ny2) this.c).c(wy5VarG);
                    return;
                } else {
                    l0.e("No pending post available");
                    return;
                }
            case 2:
                ((lq3) this.b).accept(this.c);
                return;
            case 3:
                q19 q19Var = (q19) this.c;
                f29 f29Var = (f29) this.b;
                hs1 hs1Var = f29Var.b;
                if (hs1Var.n()) {
                    o29 o29Var = f29Var.c;
                    ly8.h(o29Var);
                    hs1 hs1Var2 = o29Var.c;
                    if (!hs1Var2.n()) {
                        Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(String.valueOf(hs1Var2)), new Exception());
                        q19Var.n.b(hs1Var2);
                        q19Var.k.m();
                        return;
                    }
                    w86 w86Var = q19Var.n;
                    IBinder iBinder = o29Var.b;
                    if (iBinder == null) {
                        uv9Var = null;
                    } else {
                        int i = x6.b;
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                        uv9Var = iInterfaceQueryLocalInterface instanceof n74 ? (n74) iInterfaceQueryLocalInterface : new uv9(iBinder);
                    }
                    Set set = q19Var.e;
                    w86Var.getClass();
                    if (uv9Var == null || set == null) {
                        Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                        w86Var.b(new hs1(4, null, null));
                    } else {
                        w86Var.d = uv9Var;
                        w86Var.e = set;
                        if (w86Var.a) {
                            ((ne) w86Var.b).k(uv9Var, set);
                        }
                    }
                } else {
                    q19Var.n.b(hs1Var);
                }
                q19Var.k.m();
                return;
            default:
                dq0 dq0Var = (dq0) this.b;
                yq0 yq0Var = (yq0) this.c;
                c6 c6Var = dq0Var.f.b;
                c49 c49Var = dq0Var.f;
                if (c6Var == null) {
                    ta9.h("BillingClient", "No valid listener is set in BroadcastManager");
                    return;
                } else {
                    c49Var.b.getClass();
                    c6.o(yq0Var, null);
                    return;
                }
        }
    }

    public vb(q19 q19Var, f29 f29Var) {
        this.a = 3;
        this.c = q19Var;
        this.b = f29Var;
    }

    public /* synthetic */ vb(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }
}
