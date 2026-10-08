package defpackage;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gy implements Comparator {
    public final /* synthetic */ int a;
    public final /* synthetic */ Comparator b;

    public /* synthetic */ gy(Comparator comparator, int i) {
        this.a = i;
        this.b = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.a;
        Comparator comparator = this.b;
        switch (i) {
            case 0:
                int iCompare = ((fy) comparator).compare(obj, obj2);
                return iCompare != 0 ? iCompare : ms8.n(((ji) obj).getPackageName(), ((ji) obj2).getPackageName());
            default:
                int iCompare2 = ((uk0) comparator).compare(obj, obj2);
                if (iCompare2 != 0) {
                    return iCompare2;
                }
                return String.CASE_INSENSITIVE_ORDER.compare(((s54) ((pw5) obj).b).c, ((s54) ((pw5) obj2).b).c);
        }
    }
}
