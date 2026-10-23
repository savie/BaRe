package defpackage;

import android.os.StrictMode;
import android.util.Log;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i8 implements Runnable {
    public final /* synthetic */ int a;
    public final Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ i8(int i, Object obj, Object obj2) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dc5 dc5Var;
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                l8 l8Var = (l8) obj2;
                o8 o8Var = (o8) obj;
                fc5 fc5Var = o8Var.c;
                if (fc5Var != null && (dc5Var = fc5Var.e) != null) {
                    dc5Var.m(fc5Var);
                }
                View view = (View) o8Var.n;
                if (view != null && view.getWindowToken() != null) {
                    if (l8Var.b()) {
                        o8Var.L = l8Var;
                    } else if (l8Var.f != null) {
                        l8Var.d(0, 0, false, false);
                        o8Var.L = l8Var;
                    }
                }
                o8Var.N = null;
                break;
            case 1:
                ((d9) obj2).a = obj;
                break;
            case 2:
                x60 x60Var = (x60) obj;
                z60 z60Var = x60Var.d;
                if (z60Var.g == x60Var.c) {
                    List list = x60Var.b;
                    z60Var.e = list;
                    z60Var.f = Collections.unmodifiableList(list);
                    ((bl2) obj2).a(z60Var.a);
                    z60Var.a();
                }
                break;
            case 3:
                cf2 cf2Var = (cf2) obj;
                ArrayList<fh6> arrayList = (ArrayList) obj2;
                for (fh6 fh6Var : arrayList) {
                    cf2Var.getClass();
                    View view2 = fh6Var.a;
                    ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
                    cf2Var.o.add(fh6Var);
                    viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(cf2Var.c).setListener(new we2(cf2Var, fh6Var, view2, viewPropertyAnimatorAnimate)).start();
                }
                arrayList.clear();
                cf2Var.l.remove(arrayList);
                break;
            case 4:
                iy3 iy3Var = (iy3) obj;
                if (iy3Var.d) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    ((Runnable) obj2).run();
                } catch (Throwable th) {
                    iy3Var.c.getClass();
                    if (Log.isLoggable("GlideExecutor", 6)) {
                        Log.e("GlideExecutor", "Request threw uncaught throwable", th);
                        return;
                    }
                    return;
                }
                break;
            case 5:
                ((ln6) obj).h = null;
                ((gz5) obj2).run();
                break;
            default:
                yq0 yq0Var = le9.k;
                ((dq0) obj2).y(24, 9, yq0Var);
                ga9 ga9Var = ma9.b;
                ((lq0) obj).b(yq0Var, mb9.e);
                break;
        }
    }

    public /* synthetic */ i8(Object obj, Object obj2, int i, boolean z) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }
}
