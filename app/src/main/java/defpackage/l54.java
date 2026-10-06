package defpackage;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class l54 implements Comparator {
    public final /* synthetic */ zk2 a;

    public l54(zk2 zk2Var) {
        this.a = zk2Var;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int iCompare = this.a.compare(obj, obj2);
        return iCompare != 0 ? iCompare : ms8.n(Integer.valueOf(((s54) obj).x), Integer.valueOf(((s54) obj2).x));
    }
}
