package defpackage;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xx implements Comparator {
    public final /* synthetic */ int a;
    public final /* synthetic */ mt3 b;

    public /* synthetic */ xx(int i, mt3 mt3Var) {
        this.a = i;
        this.b = mt3Var;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.a;
        mt3 mt3Var = this.b;
        switch (i) {
            case 0:
                nu nuVar = (nu) mt3Var;
                return ms8.n((Comparable) nuVar.invoke(obj), (Comparable) nuVar.invoke(obj2));
            default:
                return String.CASE_INSENSITIVE_ORDER.compare(mt3Var.invoke(obj), mt3Var.invoke(obj2));
        }
    }
}
