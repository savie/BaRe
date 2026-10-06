package defpackage;

import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t33 {
    public static final ConcurrentHashMap b = new ConcurrentHashMap(7);
    public final ConcurrentHashMap a = new ConcurrentHashMap(7);

    public final Format a(int i, final Locale locale, final TimeZone timeZone) {
        final Integer numValueOf = Integer.valueOf(i);
        final int i2 = 3;
        int i3 = k05.a;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        final Locale locale2 = locale != null ? locale : Locale.getDefault();
        final String str = (String) b.computeIfAbsent(new u3(numValueOf, 3, locale2), new Function() { // from class: s3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Integer num = numValueOf;
                Integer num2 = i2;
                Locale locale3 = locale2;
                try {
                    return ((SimpleDateFormat) DateFormat.getDateTimeInstance(num.intValue(), num2.intValue(), locale3)).toPattern();
                } catch (ClassCastException unused) {
                    g84.k(locale3, "No date time pattern for locale: ");
                    return null;
                }
            }
        });
        Objects.requireNonNull(str, "pattern");
        int i4 = d48.a;
        if (timeZone == null) {
            timeZone = TimeZone.getDefault();
        }
        if (locale == null) {
            locale = Locale.getDefault();
        }
        return (Format) this.a.computeIfAbsent(new u3(str, timeZone, locale), new Function(this) { // from class: t3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new u33(str, timeZone, locale);
            }
        });
    }
}
