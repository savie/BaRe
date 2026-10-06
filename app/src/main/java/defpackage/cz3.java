package defpackage;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.util.Comparator;
import org.swiftapps.swiftbackup.appconfigs.data.Config;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class cz3 implements Comparator {
    public final /* synthetic */ int a;

    public /* synthetic */ cz3(int i) {
        this.a = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return String.CASE_INSENSITIVE_ORDER.compare(((ji) obj).getName(), ((ji) obj2).getName());
            case 1:
                return ms8.n((Comparable) ((pw5) obj2).a, (Comparable) ((pw5) obj).a);
            case 2:
                return ms8.n(Boolean.valueOf(!(((InetAddress) obj) instanceof Inet4Address)), Boolean.valueOf(!(((InetAddress) obj2) instanceof Inet4Address)));
            default:
                String lowerCase = ((Config) obj).getName().toLowerCase(j05.b());
                lowerCase.getClass();
                String lowerCase2 = ((Config) obj2).getName().toLowerCase(j05.b());
                lowerCase2.getClass();
                return ms8.n(lowerCase, lowerCase2);
        }
    }
}
