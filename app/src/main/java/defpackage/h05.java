package defpackage;

import android.os.LocaleList;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h05 {
    public static final h05 b = c(new LocaleList(new Locale[0]));
    public final i05 a;

    public h05(i05 i05Var) {
        this.a = i05Var;
    }

    public static h05 a(String str) {
        if (str == null || str.isEmpty()) {
            return b;
        }
        String[] strArrSplit = str.split(",", -1);
        int length = strArrSplit.length;
        Locale[] localeArr = new Locale[length];
        for (int i = 0; i < length; i++) {
            localeArr[i] = Locale.forLanguageTag(strArrSplit[i]);
        }
        return c(new LocaleList(localeArr));
    }

    public static h05 c(LocaleList localeList) {
        return new h05(new i05(localeList));
    }

    public final Locale b(int i) {
        return this.a.a.get(i);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof h05) {
            return this.a.equals(((h05) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.a.hashCode();
    }

    public final String toString() {
        return this.a.a.toString();
    }
}
