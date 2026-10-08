package defpackage;

import java.text.DateFormatSymbols;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k43 extends g43 {
    public final Locale b;
    public final TreeMap c = new TreeMap(String.CASE_INSENSITIVE_ORDER);

    public k43(Locale locale) {
        int i = k05.a;
        this.b = locale != null ? locale : Locale.getDefault();
        StringBuilder sbS = dj7.s("((?iu)[+-]\\d{4}|GMT[+-]\\d{1,2}:\\d{2}");
        TreeSet treeSet = new TreeSet(l43.n);
        for (String[] strArr : DateFormatSymbols.getInstance(locale).getZoneStrings()) {
            String str = strArr[0];
            if (!str.equalsIgnoreCase("GMT")) {
                TimeZone timeZone = TimeZone.getTimeZone(str);
                j43 j43Var = new j43(timeZone, false);
                j43 j43Var2 = j43Var;
                for (int i2 = 1; i2 < strArr.length; i2++) {
                    if (i2 == 3) {
                        j43Var2 = new j43(timeZone, true);
                    } else if (i2 == 5) {
                        j43Var2 = j43Var;
                    }
                    String str2 = strArr[i2];
                    if (str2 != null && treeSet.add(str2)) {
                        this.c.put(str2, j43Var2);
                    }
                }
            }
        }
        String[] availableIDs = TimeZone.getAvailableIDs();
        if (availableIDs != null) {
            Arrays.sort(availableIDs);
        }
        for (String str3 : availableIDs) {
            if (!str3.equalsIgnoreCase("GMT")) {
                TimeZone timeZone2 = TimeZone.getTimeZone(str3);
                String displayName = timeZone2.getDisplayName(locale);
                if (treeSet.add(displayName)) {
                    this.c.put(displayName, new j43(timeZone2, timeZone2.observesDaylightTime()));
                }
            }
        }
        treeSet.forEach(new kl0(sbS, 1));
        sbS.append(")");
        this.a = Pattern.compile(sbS.toString());
    }

    @Override // defpackage.g43
    public final void c(Calendar calendar, String str) {
        iz3 iz3VarA = s53.a(str);
        if (iz3VarA != null) {
            calendar.setTimeZone(iz3VarA);
            return;
        }
        TreeMap treeMap = this.c;
        j43 j43Var = (j43) treeMap.get(str);
        if (j43Var == null) {
            j43Var = (j43) treeMap.get(str + '.');
            if (j43Var == null) {
                char[] charArray = str.toCharArray();
                throw new IllegalStateException(String.format("Can't find time zone '%s' (%d %s) in %s", str, Integer.valueOf(charArray.length), Arrays.toString(charArray), new TreeSet(treeMap.keySet())));
            }
        }
        calendar.set(16, j43Var.b);
        calendar.set(15, j43Var.a.getRawOffset());
    }

    @Override // defpackage.g43
    public final String toString() {
        return "TimeZoneStrategy [locale=" + this.b + ", tzNames=" + this.c + ", pattern=" + this.a + "]";
    }
}
