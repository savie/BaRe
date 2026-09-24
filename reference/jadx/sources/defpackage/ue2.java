package defpackage;

import android.view.View;
import android.view.ViewPropertyAnimator;
import com.google.firebase.auth.FirebaseAuth;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ue2 implements Runnable {
    public final /* synthetic */ int a;
    public final Object b;
    public final Object c;

    public ue2(vj6 vj6Var, wc2 wc2Var, eb2 eb2Var) {
        this.a = 3;
        this.b = vj6Var;
        this.c = wc2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        int i2 = 0;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                cf2 cf2Var = (cf2) obj;
                ArrayList<af2> arrayList = (ArrayList) obj2;
                for (af2 af2Var : arrayList) {
                    ArrayList arrayList2 = cf2Var.r;
                    long j = cf2Var.f;
                    fh6 fh6Var = af2Var.a;
                    View view = fh6Var == null ? null : fh6Var.a;
                    fh6 fh6Var2 = af2Var.b;
                    View view2 = fh6Var2 != null ? fh6Var2.a : null;
                    if (view != null) {
                        ViewPropertyAnimator duration = view.animate().setDuration(j);
                        arrayList2.add(af2Var.a);
                        duration.translationX(af2Var.e - af2Var.c);
                        duration.translationY(af2Var.f - af2Var.d);
                        duration.alpha(0.0f).setListener(new ye2(cf2Var, af2Var, duration, view)).start();
                    }
                    if (view2 != null) {
                        ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
                        arrayList2.add(af2Var.b);
                        viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(j).alpha(1.0f).setListener(new ze2(cf2Var, af2Var, viewPropertyAnimatorAnimate, view2)).start();
                    }
                }
                arrayList.clear();
                cf2Var.n.remove(arrayList);
                return;
            case 1:
                b76 b76Var = (b76) obj;
                AtomicLong atomicLong = b76Var.d;
                atomicLong.lazySet(atomicLong.get() + 1);
                u66 u66Var = (u66) obj2;
                if (((z66) u66Var.get()).a()) {
                    b76Var.c.offerLast(u66Var);
                    b76Var.e();
                    return;
                }
                return;
            case 2:
                ((zc2) obj).a.d((ez2) obj2);
                return;
            case 3:
                ((vj6) obj2).b.a((wc2) obj, false);
                return;
            case 4:
                ((o21) obj).E((mz2) obj2);
                return;
            default:
                FirebaseAuth firebaseAuth = (FirebaseAuth) obj2;
                for (ob obVar : firebaseAuth.d) {
                    obVar.a.execute(new pb(i2, obVar.b, (me4) obj));
                }
                Iterator it = firebaseAuth.b.iterator();
                if (it.hasNext()) {
                    throw eq3.h(it);
                }
                return;
        }
    }

    public /* synthetic */ ue2(Object obj, Object obj2, int i, boolean z) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public /* synthetic */ ue2(int i, Object obj, Object obj2) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
    }
}
