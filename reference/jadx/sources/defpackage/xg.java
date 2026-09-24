package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.Comparator;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xg implements Comparator {
    public final /* synthetic */ int a;

    public /* synthetic */ xg(int i) {
        this.a = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.a;
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        switch (i) {
            case 0:
                String strP = ((q63) obj).p();
                Boolean boolValueOf = Boolean.valueOf(!(strP.equals("base.apk") || strP.equals("base-master.apk")));
                String strP2 = ((q63) obj2).p();
                return ms8.n(boolValueOf, Boolean.valueOf(((strP2.equals("base.apk") || strP2.equals("base-master.apk")) ? 1 : 0) ^ 1));
            case 1:
                return ms8.n(((q63) obj).p(), ((q63) obj2).p());
            case 2:
                return comparator.compare(((r00) obj).a, ((r00) obj2).a);
            case 3:
                return comparator.compare(((BlacklistApp) obj).getName(), ((BlacklistApp) obj2).getName());
            case 4:
                return ((m61) obj).compareTo((m61) obj2);
            case 5:
                String path = ((jr7) obj2).getPath();
                path.getClass();
                int i2 = 0;
                for (int i3 = 0; i3 < path.length(); i3++) {
                    if (path.charAt(i3) == '/') {
                        i2++;
                    }
                }
                Integer numValueOf = Integer.valueOf(i2);
                String path2 = ((jr7) obj).getPath();
                path2.getClass();
                int i4 = 0;
                for (int i5 = 0; i5 < path2.length(); i5++) {
                    if (path2.charAt(i5) == '/') {
                        i4++;
                    }
                }
                return ms8.n(numValueOf, Integer.valueOf(i4));
            case 6:
                return ms8.n(Long.valueOf(((yz3) obj).d), Long.valueOf(((yz3) obj2).d));
            case 7:
                return ms8.n(Boolean.valueOf(((LabelParams) obj).isBuiltInLabel()), Boolean.valueOf(((LabelParams) obj2).isBuiltInLabel()));
            case 8:
                return ((Comparable) obj).compareTo((Comparable) obj2);
            case XmlPullParser.COMMENT /* 9 */:
                return ((ej7) obj).b - ((ej7) obj2).b;
            case 10:
                return ((em8) obj).b - ((em8) obj2).b;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return ms8.n(Long.valueOf(((yn8) obj2).b), Long.valueOf(((yn8) obj).b));
            default:
                return comparator.compare(((et8) obj).getSSID(), ((et8) obj2).getSSID());
        }
    }
}
