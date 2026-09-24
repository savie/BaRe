package defpackage;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class yx implements Comparator {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ yx(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.a;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                dq dqVar = (dq) obj3;
                return ms8.n((Comparable) dqVar.invoke(obj), (Comparable) dqVar.invoke(obj2));
            case 1:
                mt3 mt3Var = (mt3) obj3;
                return ms8.n((Comparable) mt3Var.invoke(obj), (Comparable) mt3Var.invoke(obj2));
            default:
                int iCompare = ((cz3) obj3).compare(obj, obj2);
                if (iCompare != 0) {
                    return iCompare;
                }
                ai6 ai6Var = o54.a;
                return ms8.n(Integer.valueOf(o54.a((s54) ((pw5) obj).b)), Integer.valueOf(o54.a((s54) ((pw5) obj2).b)));
        }
    }
}
