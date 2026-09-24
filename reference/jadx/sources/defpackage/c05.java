package defpackage;

import android.os.Looper;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class c05 extends dv {
    public static final c05 g = new c05(2);

    @Override // defpackage.dv
    public final ik6 a() {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        String str = ry5.u;
        ArrayList<q63> arrayListD = new q63(qy5.f(false, null).q, 2).D(new zz0(1));
        if (arrayListD == null || arrayListD.isEmpty()) {
            return new ik6(hk6.Empty, null, false, 14);
        }
        ArrayList arrayList = new ArrayList(hl1.G0(arrayListD, 10));
        for (q63 q63Var : arrayListD) {
            q63Var.getClass();
            arrayList.add(new yn8(q63Var, q63Var.z(), q63Var.A(), String.valueOf(Long.hashCode(q63Var.A())), 48));
        }
        return new ik6(hk6.Success, new ArrayList(arrayList), false, 12);
    }
}
