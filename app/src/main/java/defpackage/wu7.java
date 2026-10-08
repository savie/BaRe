package defpackage;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wu7 implements Callable {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ wu7(dq0 dq0Var, kq0 kq0Var, ia9 ia9Var) {
        this.b = dq0Var;
        this.c = kq0Var;
        this.d = ia9Var;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        w89 w89Var;
        switch (this.a) {
            case 0:
                np1 np1VarI = np1.i((HashMap) this.b);
                bv7 bv7Var = (bv7) this.d;
                eo5 eo5Var = bv7Var.g;
                gy5 gy5Var = (gy5) this.c;
                eo5Var.c();
                return bv7.a(bv7Var, new bd5(eu5.e, gy5Var, np1VarI));
            default:
                dq0 dq0Var = (dq0) this.b;
                kq0 kq0Var = (kq0) this.c;
                ia9 ia9Var = (ia9) this.d;
                try {
                    if (!dq0Var.u()) {
                        yq0 yq0Var = le9.j;
                        dq0Var.y(2, 3, yq0Var);
                        kq0Var.a(yq0Var);
                    } else if (TextUtils.isEmpty(ia9Var.b)) {
                        ta9.h("BillingClient", "Please provide a valid purchase token.");
                        yq0 yq0Var2 = le9.g;
                        dq0Var.y(26, 3, yq0Var2);
                        kq0Var.a(yq0Var2);
                    } else if (dq0Var.n) {
                        synchronized (dq0Var.a) {
                            w89Var = dq0Var.i;
                            break;
                        }
                        if (w89Var == null) {
                            dq0Var.i(kq0Var, le9.j, 107, null);
                        } else {
                            String packageName = dq0Var.g.getPackageName();
                            String str = ia9Var.b;
                            String str2 = dq0Var.c;
                            String str3 = dq0Var.d;
                            long jLongValue = dq0Var.A.longValue();
                            int i = ta9.a;
                            Bundle bundle = new Bundle();
                            ta9.b(bundle, str2, str3, jLongValue);
                            Bundle bundleO = ((g89) w89Var).o(packageName, str, bundle);
                            kq0Var.a(le9.a(ta9.a(bundleO, "BillingClient"), ta9.f(bundleO, "BillingClient")));
                        }
                    } else {
                        yq0 yq0Var3 = le9.a;
                        dq0Var.y(27, 3, yq0Var3);
                        kq0Var.a(yq0Var3);
                    }
                } catch (DeadObjectException e) {
                    dq0Var.i(kq0Var, le9.j, 28, e);
                } catch (Exception e2) {
                    dq0Var.i(kq0Var, le9.h, 28, e2);
                }
                return null;
        }
    }

    public wu7(bv7 bv7Var, HashMap map, gy5 gy5Var) {
        this.d = bv7Var;
        this.b = map;
        this.c = gy5Var;
    }
}
