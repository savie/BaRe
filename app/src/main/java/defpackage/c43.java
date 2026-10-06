package defpackage;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.TreeSet;
import java.util.function.BiConsumer;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c43 extends g43 {
    public final int b;
    public final Locale c;
    public final HashMap d;

    public c43(int i, Calendar calendar, final Locale locale) {
        this.b = i;
        int i2 = k05.a;
        this.c = locale != null ? locale : Locale.getDefault();
        StringBuilder sb = new StringBuilder();
        sb.append("((?iu)");
        Objects.requireNonNull(calendar, "calendar");
        final HashMap map = new HashMap();
        locale = locale == null ? Locale.getDefault() : locale;
        Map<String, Integer> displayNames = calendar.getDisplayNames(i, 0, locale);
        final TreeSet treeSet = new TreeSet(l43.n);
        displayNames.forEach(new BiConsumer() { // from class: w33
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                Integer num = (Integer) obj2;
                String lowerCase = ((String) obj).toLowerCase(locale);
                if (treeSet.add(lowerCase)) {
                    map.put(lowerCase, num);
                }
            }
        });
        treeSet.forEach(new mw1(sb, 1));
        this.d = map;
        sb.setLength(sb.length() - 1);
        sb.append(")");
        this.a = Pattern.compile(sb.toString());
    }

    @Override // defpackage.g43
    public final void c(Calendar calendar, String str) {
        String lowerCase = str.toLowerCase(this.c);
        HashMap map = this.d;
        Integer num = (Integer) map.get(lowerCase);
        if (num == null) {
            num = (Integer) map.get(lowerCase + '.');
        }
        int i = this.b;
        if (9 != i || num.intValue() <= 1) {
            calendar.set(i, num.intValue());
        }
    }

    @Override // defpackage.g43
    public final String toString() {
        return "CaseInsensitiveTextStrategy [field=" + this.b + ", locale=" + this.c + ", lKeyValues=" + this.d + ", pattern=" + this.a + "]";
    }
}
