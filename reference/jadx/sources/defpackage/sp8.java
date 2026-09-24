package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sp8 implements gk6 {
    public final /* synthetic */ tp8 a;

    public sp8(tp8 tp8Var) {
        this.a = tp8Var;
    }

    @Override // defpackage.gk6
    public final void a(ik6 ik6Var) {
        List list = (List) ik6Var.c;
        boolean zIsEmpty = list.isEmpty();
        tp8 tp8Var = this.a;
        if (zIsEmpty) {
            tp8Var.d();
        } else {
            tp8Var.k.k(new fm7((List) new ArrayList(el1.n1(list, new jc1(7))), (Set) null, false, (String) null, 30));
        }
    }
}
