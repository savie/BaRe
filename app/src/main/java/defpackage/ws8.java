package defpackage;

import android.os.Looper;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ws8 implements dt8 {
    @Override // defpackage.dt8
    public final void a(et8 et8Var) {
        vr6.INSTANCE.e("QHelper", "enableConfig: Not possible on Android Q", vr6.a.YELLOW);
    }

    @Override // defpackage.dt8
    public final boolean b(List list, cz czVar) {
        list.getClass();
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return false;
        }
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "QHelper", xs1.h(list.size(), "restoreAll: ", " items"), null, 4, null);
        czVar.invoke(at8.a);
        if (list.size() > 1) {
            vr6.e$default(vr6Var, "QHelper", xs1.h(list.size(), "performRestore: configs.size=", ". Can't batch restore on Android Q!"), null, 4, null);
        }
        et8 et8Var = (et8) el1.S0(list);
        czVar.invoke(new bt8(et8Var, 1, 1));
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return false;
        }
        ny2.b().e(new lt8(et8Var));
        czVar.invoke(zs8.a);
        return false;
    }

    @Override // defpackage.dt8
    public final boolean c() {
        return false;
    }
}
