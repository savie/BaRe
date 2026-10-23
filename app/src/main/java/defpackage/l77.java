package defpackage;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l77 implements f77 {
    public final /* synthetic */ f77 a;
    public final /* synthetic */ Comparator b;

    public l77(f77 f77Var, Comparator comparator) {
        this.a = f77Var;
        this.b = comparator;
    }

    @Override // defpackage.f77
    public final Iterator iterator() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        jl1.H0(arrayList, this.b);
        return arrayList.iterator();
    }
}
