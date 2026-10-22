package defpackage;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class uk0 implements Comparator {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ uk0(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.a;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                String str = (String) obj3;
                return ms8.n(Boolean.valueOf(!((q63) obj).p().equals(str)), Boolean.valueOf(!((q63) obj2).p().equals(str)));
            default:
                int iCompare = ((yg) obj3).compare(obj, obj2);
                return iCompare != 0 ? iCompare : ms8.n(Integer.valueOf(((s54) ((pw5) obj).b).x), Integer.valueOf(((s54) ((pw5) obj2).b).x));
        }
    }
}
