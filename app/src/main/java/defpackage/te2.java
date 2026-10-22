package defpackage;

import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class te2 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ te2(int i, Object obj, Object obj2) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                cf2 cf2Var = (cf2) this.c;
                ArrayList<bf2> arrayList = (ArrayList) this.b;
                for (bf2 bf2Var : arrayList) {
                    fh6 fh6Var = bf2Var.a;
                    int i = bf2Var.b;
                    int i2 = bf2Var.c;
                    int i3 = bf2Var.d;
                    int i4 = bf2Var.e;
                    cf2Var.getClass();
                    View view = fh6Var.a;
                    int i5 = i3 - i;
                    int i6 = i4 - i2;
                    if (i5 != 0) {
                        view.animate().translationX(0.0f);
                    }
                    if (i6 != 0) {
                        view.animate().translationY(0.0f);
                    }
                    ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                    cf2Var.p.add(fh6Var);
                    viewPropertyAnimatorAnimate.setDuration(cf2Var.e).setListener(new xe2(cf2Var, fh6Var, i5, view, i6, viewPropertyAnimatorAnimate)).start();
                }
                arrayList.clear();
                cf2Var.m.remove(arrayList);
                break;
            case 1:
                a70 a70Var = (a70) this.c;
                Object obj = this.b;
                boolean z = a70Var.c.get();
                y29 y29Var = a70Var.e;
                if (z) {
                    if (y29Var.h == a70Var) {
                        SystemClock.uptimeMillis();
                        y29Var.h = null;
                        y29Var.b();
                    }
                } else if (y29Var.g != a70Var) {
                    if (y29Var.h == a70Var) {
                        SystemClock.uptimeMillis();
                        y29Var.h = null;
                        y29Var.b();
                    }
                } else if (!y29Var.c) {
                    SystemClock.uptimeMillis();
                    y29Var.g = null;
                    dz4 dz4Var = y29Var.a;
                    if (dz4Var != null) {
                        if (Looper.myLooper() == Looper.getMainLooper()) {
                            dz4Var.k(obj);
                        } else {
                            dz4Var.i(obj);
                        }
                    }
                }
                a70Var.b = 3;
                break;
            case 2:
                ((zc2) this.c).a.l((ez2) this.b);
                break;
            case 3:
                wj6 wj6Var = (wj6) this.c;
                vj6 vj6Var = (vj6) this.b;
                wj6Var.l(new bj8(wj6Var, vj6Var.c, qc6.a(vj6Var.a)));
                break;
            case 4:
                dq0 dq0Var = (dq0) this.b;
                kq0 kq0Var = (kq0) this.c;
                yq0 yq0Var = le9.k;
                dq0Var.y(24, 3, yq0Var);
                kq0Var.a(yq0Var);
                break;
            default:
                dq0 dq0Var2 = (dq0) this.b;
                w76 w76Var = (w76) this.c;
                yq0 yq0Var2 = le9.k;
                dq0Var2.y(24, 7, yq0Var2);
                ga9 ga9Var = ma9.b;
                mb9 mb9Var = mb9.e;
                w76Var.a(yq0Var2, new ib(10, mb9Var, mb9Var));
                break;
        }
    }

    public /* synthetic */ te2(dq0 dq0Var, Object obj, int i) {
        this.a = i;
        this.b = dq0Var;
        this.c = obj;
    }
}
