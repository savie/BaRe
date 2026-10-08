package defpackage;

import android.app.Application;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AlphaAnimation;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b9 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public b9(zc2 zc2Var, bf3 bf3Var) {
        this.a = 1;
        this.c = zc2Var;
        this.b = bf3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        wc2 wc2VarA;
        b98 b98Var;
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ((Application) obj2).unregisterActivityLifecycleCallbacks((d9) obj);
                break;
            case 1:
                zc2 zc2Var = (zc2) obj;
                wj6 wj6Var = zc2Var.a;
                gy5 gy5Var = zc2Var.b;
                bf3 bf3Var = (bf3) obj2;
                u00 u00Var = wj6Var.i;
                if (u00Var.e()) {
                    u00Var.c("transaction: " + gy5Var, null, new Object[0]);
                }
                if (wj6Var.k.e()) {
                    u00Var.c("transaction: " + gy5Var, null, new Object[0]);
                }
                zc2 zc2Var2 = new zc2(wj6Var, gy5Var);
                hx0 hx0Var = new hx0(14);
                wj6Var.d(new bj8(wj6Var, hx0Var, zc2Var2.f()));
                long j = wj6Var.o;
                wj6Var.o = j + 1;
                vj6 vj6Var = new vj6();
                vj6Var.a = gy5Var;
                vj6Var.b = bf3Var;
                vj6Var.c = hx0Var;
                vj6Var.d = 1;
                vj6Var.f = 0;
                vj6Var.e = j;
                vj6Var.k = null;
                vj6Var.p = null;
                vj6Var.q = null;
                vj6Var.r = null;
                qn5 qn5VarI = wj6Var.n.i(gy5Var, new ArrayList());
                if (qn5VarI == null) {
                    qn5VarI = qv2.e;
                }
                vj6Var.p = qn5VarI;
                try {
                    try {
                        b98Var = (b98) bf3Var.a.invoke(new fj5(qn5VarI));
                    } catch (Exception e) {
                        bf3Var.b.set(e);
                        b98Var = new b98(false, null);
                    }
                    if (b98Var == null) {
                        throw new NullPointerException("Transaction returned null as result");
                    }
                    wc2VarA = null;
                } catch (Throwable th) {
                    u00Var.d("Caught Throwable.", th);
                    wc2VarA = wc2.a(th);
                    b98Var = new b98(false, null);
                }
                if (!b98Var.a) {
                    vj6Var.q = null;
                    vj6Var.r = null;
                    wj6Var.i(new ax2(bf3Var, wc2VarA, new eb2(zc2Var2, sb4.d(vj6Var.p))));
                } else {
                    vj6Var.d = 2;
                    gd gdVarN = wj6Var.f.n(gy5Var);
                    eb8 eb8Var = (eb8) gdVarN.d;
                    List arrayList = (List) eb8Var.b;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(vj6Var);
                    eb8Var.b = arrayList;
                    gdVarN.o();
                    HashMap mapV = ms8.v(wj6Var.b);
                    qn5 qn5Var = b98Var.b;
                    qn5 qn5VarL = ms8.L(qn5Var, new ej8(vj6Var.p), mapV);
                    vj6Var.q = qn5Var;
                    vj6Var.r = qn5VarL;
                    long j2 = wj6Var.l;
                    wj6Var.l = 1 + j2;
                    vj6Var.n = j2;
                    wj6Var.j(wj6Var.n.h(gy5Var, qn5Var, qn5VarL, j2, false, false));
                    gd gdVar = wj6Var.f;
                    wj6Var.k(gdVar);
                    wj6Var.o(gdVar);
                }
                break;
            case 2:
                ((vj6) obj2).b.a((wc2) obj, false);
                break;
            default:
                m37 m37Var = (m37) obj2;
                if (!m37Var.isDetached()) {
                    View childAt = m37Var.n().getChildAt(((Integer) obj).intValue());
                    m37Var.n().post(new j37(m37Var, childAt.getY() + m37Var.n().getY()));
                    AlphaAnimation alphaAnimation = new AlphaAnimation(0.5f, 1.0f);
                    alphaAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
                    alphaAnimation.setDuration(750L);
                    alphaAnimation.setRepeatCount(1);
                    childAt.startAnimation(alphaAnimation);
                }
                break;
        }
    }

    public /* synthetic */ b9(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }
}
