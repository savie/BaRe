package defpackage;

import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fa2 extends a55 {
    public final ex6 c = new ex6();
    public final ex6 d;
    public final ix6 e;
    public final ex6 f;
    public final ex6 g;
    public final ix6 h;

    public fa2() {
        ex6 ex6Var = new ex6();
        ex6Var.k(np6.e.INSTANCE);
        this.d = ex6Var;
        this.e = new ix6();
        this.f = new ex6();
        this.g = new ex6();
        this.h = new ix6();
    }

    public final void c() {
        ex6 ex6Var = this.g;
        ea2 ea2Var = (ea2) ex6Var.d();
        Parcelable.Creator<zc6> creator = zc6.CREATOR;
        ArrayList arrayListG1 = el1.g1(el1.g1(yc6.a(), yc6.b()), yc6.f());
        Set setG = yc6.g();
        ArrayList arrayList = new ArrayList();
        for (Object obj : arrayListG1) {
            if (setG.contains(Integer.valueOf(((zc6) obj).b))) {
                arrayList.add(obj);
            }
        }
        ea2 ea2Var2 = new ea2(arrayList);
        if (pe4.d(ea2Var, ea2Var2)) {
            return;
        }
        ex6Var.k(ea2Var2);
    }
}
