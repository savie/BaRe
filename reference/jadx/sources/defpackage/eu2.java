package defpackage;

import android.os.Build;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eu2 extends nc8 {
    public final /* synthetic */ fu2 e;

    public eu2(fu2 fu2Var) {
        this.e = fu2Var;
    }

    @Override // defpackage.nc8
    public final void P(Throwable th) {
        this.e.a.d(th);
    }

    @Override // defpackage.nc8
    public final void R(kb2 kb2Var) {
        fu2 fu2Var = this.e;
        fu2Var.c = kb2Var;
        kb2 kb2Var2 = fu2Var.c;
        ku2 ku2Var = fu2Var.a;
        fu2Var.b = new dr(kb2Var2, ku2Var.g, ku2Var.i, Build.VERSION.SDK_INT >= 34 ? ru2.a() : zh8.s());
        ku2 ku2Var2 = fu2Var.a;
        ArrayList arrayList = new ArrayList();
        ku2Var2.a.writeLock().lock();
        try {
            ku2Var2.c = 1;
            arrayList.addAll(ku2Var2.b);
            ku2Var2.b.clear();
            ku2Var2.a.writeLock().unlock();
            ku2Var2.d.post(new iu2(arrayList, ku2Var2.c, null));
        } catch (Throwable th) {
            ku2Var2.a.writeLock().unlock();
            throw th;
        }
    }
}
