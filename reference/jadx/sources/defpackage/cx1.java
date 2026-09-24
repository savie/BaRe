package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cx1 implements p75 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ cx1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.p75
    public final void a(bs2 bs2Var, on5 on5Var) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                String str = ((r08) on5Var).f;
                ((wj7) bs2Var.d).a.append(str);
                ArrayList arrayList = ((jx1) obj).a;
                if (arrayList.isEmpty()) {
                    return;
                }
                bs2Var.g();
                str.getClass();
                Iterator it = arrayList.iterator();
                if (it.hasNext()) {
                    throw eq3.h(it);
                }
                return;
            default:
                uw7.a((uw7) obj, bs2Var, (ww7) on5Var);
                return;
        }
    }
}
