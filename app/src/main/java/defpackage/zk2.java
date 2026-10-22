package defpackage;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zk2 implements Comparator {
    public final /* synthetic */ int a;

    public /* synthetic */ zk2(int i) {
        this.a = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return ((al2) obj).a - ((al2) obj2).a;
            case 1:
                return ms8.n(Long.valueOf(((zk3) obj).a.getSetupCreationTime()), Long.valueOf(((zk3) obj2).a.getSetupCreationTime()));
            default:
                return ms8.n(Integer.valueOf(((s54) obj).b.getOrder()), Integer.valueOf(((s54) obj2).b.getOrder()));
        }
    }
}
