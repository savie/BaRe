package defpackage;

import java.util.Comparator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gj1 implements Comparator {
    public final /* synthetic */ int a;

    public /* synthetic */ gj1(int i) {
        this.a = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return ms8.n(Integer.valueOf(((cj1) obj).a), Integer.valueOf(((cj1) obj2).a));
            case 1:
                return ms8.n(Long.valueOf(((zk3) obj).b), Long.valueOf(((zk3) obj2).b));
            case 2:
                return ms8.n((Integer) ((Map.Entry) obj).getKey(), (Integer) ((Map.Entry) obj2).getKey());
            case 3:
                xr7 xr7Var = (xr7) obj;
                xr7 xr7Var2 = (xr7) obj2;
                int iCompareTo = Integer.valueOf(xr7Var2.d.a.d).compareTo(Integer.valueOf(xr7Var.d.a.d));
                return iCompareTo == 0 ? xr7Var2.a.compareTo(xr7Var.a) : iCompareTo;
            case 4:
                return ms8.n(Boolean.valueOf(((uh8) obj2) == ai8.f()), Boolean.valueOf(((uh8) obj) == ai8.f()));
            default:
                return String.CASE_INSENSITIVE_ORDER.compare(((et8) obj).getSSID(), ((et8) obj2).getSSID());
        }
    }
}
