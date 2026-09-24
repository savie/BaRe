package defpackage;

import java.util.Comparator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qs0 implements Comparator {
    public final /* synthetic */ int a;

    public /* synthetic */ qs0(int i) {
        this.a = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.a;
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        switch (i) {
            case 0:
                return comparator.compare(((ji) obj).getName(), ((ji) obj2).getName());
            case 1:
                return ms8.n(Integer.valueOf(((dj1) obj).b), Integer.valueOf(((dj1) obj2).b));
            case 2:
                return comparator.compare(((zk3) obj).a.getDisplayName(), ((zk3) obj2).a.getDisplayName());
            case 3:
                return comparator.compare((String) obj, (String) obj2);
            default:
                return ms8.n((Integer) ((Map.Entry) obj).getKey(), (Integer) ((Map.Entry) obj2).getKey());
        }
    }
}
