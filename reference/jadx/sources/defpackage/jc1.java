package defpackage;

import java.util.Comparator;
import java.util.Locale;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.contributor.ContributorRegistration;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jc1 implements Comparator {
    public final /* synthetic */ int a;

    public /* synthetic */ jc1(int i) {
        this.a = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                xi6 releaseState = ((dd1) obj).getReleaseState();
                xi6 xi6Var = xi6.TestOnly;
                return ms8.n(Boolean.valueOf(releaseState.compareTo(xi6Var) <= 0), Boolean.valueOf(((dd1) obj2).getReleaseState().compareTo(xi6Var) <= 0));
            case 1:
                return ms8.n(Long.valueOf(((Config) obj).getUpdateDate()), Long.valueOf(((Config) obj2).getUpdateDate()));
            case 2:
                return ms8.n(Integer.valueOf(((String) obj2).length()), Integer.valueOf(((String) obj).length()));
            case 3:
                String str = ((nt4) obj).a;
                Locale locale = Locale.ROOT;
                String lowerCase = str.toLowerCase(locale);
                lowerCase.getClass();
                String lowerCase2 = ((nt4) obj2).a.toLowerCase(locale);
                lowerCase2.getClass();
                return ms8.n(lowerCase, lowerCase2);
            case 4:
                String str2 = (String) obj2;
                int i = 0;
                for (int i2 = 0; i2 < str2.length(); i2++) {
                    if (str2.charAt(i2) == '/') {
                        i++;
                    }
                }
                Integer numValueOf = Integer.valueOf(i);
                String str3 = (String) obj;
                int i3 = 0;
                for (int i4 = 0; i4 < str3.length(); i4++) {
                    if (str3.charAt(i4) == '/') {
                        i3++;
                    }
                }
                return ms8.n(numValueOf, Integer.valueOf(i3));
            case 5:
                return ms8.n(Long.valueOf(((pa5) obj2).e), Long.valueOf(((pa5) obj).e));
            case 6:
                String str4 = ((ContributorRegistration) obj).get_name();
                if (str4 == null) {
                    str4 = "";
                }
                String str5 = ((ContributorRegistration) obj2).get_name();
                return ms8.n(str4, str5 != null ? str5 : "");
            case 7:
                return ms8.n(Long.valueOf(((yn8) obj2).b), Long.valueOf(((yn8) obj).b));
            default:
                return String.CASE_INSENSITIVE_ORDER.compare(((et8) obj).getSSID(), ((et8) obj2).getSSID());
        }
    }
}
