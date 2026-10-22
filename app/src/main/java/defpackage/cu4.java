package defpackage;

import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cu4 implements tt4, eu4 {
    public final HashSet a = new HashSet();
    public final hu4 b;

    public cu4(hu4 hu4Var) {
        this.b = hu4Var;
        hu4Var.a(this);
    }

    @Override // defpackage.tt4
    public final void a(du4 du4Var) {
        this.a.remove(du4Var);
    }

    @Override // defpackage.tt4
    public final void k(du4 du4Var) {
        this.a.add(du4Var);
        st4 st4Var = this.b.d;
        if (st4Var == st4.a) {
            du4Var.e();
        } else if (st4Var.compareTo(st4.d) >= 0) {
            du4Var.m();
        } else {
            du4Var.h();
        }
    }

    @ct5(rt4.ON_DESTROY)
    public void onDestroy(fu4 fu4Var) {
        Iterator it = xh8.p(this.a).iterator();
        while (it.hasNext()) {
            ((du4) it.next()).e();
        }
        fu4Var.getLifecycle().f(this);
    }

    @ct5(rt4.ON_START)
    public void onStart(fu4 fu4Var) {
        Iterator it = xh8.p(this.a).iterator();
        while (it.hasNext()) {
            ((du4) it.next()).m();
        }
    }

    @ct5(rt4.ON_STOP)
    public void onStop(fu4 fu4Var) {
        Iterator it = xh8.p(this.a).iterator();
        while (it.hasNext()) {
            ((du4) it.next()).h();
        }
    }
}
