package defpackage;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class m54 implements Comparator {
    public final /* synthetic */ int a;
    public final /* synthetic */ Comparator b;

    public /* synthetic */ m54(Comparator comparator, int i) {
        this.a = i;
        this.b = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.a;
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        Comparator comparator2 = this.b;
        switch (i) {
            case 0:
                int iCompare = ((l54) comparator2).compare(obj, obj2);
                return iCompare != 0 ? iCompare : comparator.compare(((s54) obj).c, ((s54) obj2).c);
            default:
                int iCompare2 = ((cl7) comparator2).compare(obj, obj2);
                return iCompare2 != 0 ? iCompare2 : comparator.compare(((vq4) obj).a(), ((vq4) obj2).a());
        }
    }
}
