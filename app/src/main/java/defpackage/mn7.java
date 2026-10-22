package defpackage;

import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mn7 extends DateFormat {
    public static final Pattern k = Pattern.compile("\\d\\d\\d\\d[-]\\d\\d[-]\\d\\d");
    public static final Pattern n;
    public static final String[] p;
    public static final TimeZone q;
    public static final Locale r;
    public static final SimpleDateFormat t;
    public static final mn7 x;
    public static final GregorianCalendar y;
    public transient TimeZone a;
    public final Locale b;
    public Boolean c;
    public transient Calendar d;
    public transient DateFormat e;
    public final boolean f;

    static {
        try {
            n = Pattern.compile("\\d\\d\\d\\d[-]\\d\\d[-]\\d\\d[T]\\d\\d[:]\\d\\d(?:[:]\\d\\d)?(\\.\\d+)?(Z|[+-]\\d\\d(?:[:]?\\d\\d)?)?");
            p = new String[]{"yyyy-MM-dd'T'HH:mm:ss.SSSX", "yyyy-MM-dd'T'HH:mm:ss.SSS", "EEE, dd MMM yyyy HH:mm:ss zzz", "yyyy-MM-dd"};
            TimeZone timeZone = TimeZone.getTimeZone("UTC");
            q = timeZone;
            Locale locale = Locale.US;
            r = locale;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", locale);
            t = simpleDateFormat;
            simpleDateFormat.setTimeZone(timeZone);
            x = new mn7();
            y = new GregorianCalendar(timeZone, locale);
        } catch (Exception e) {
            y5.k(e);
        }
    }

    public mn7(TimeZone timeZone, Locale locale, Boolean bool, boolean z) {
        this.a = timeZone;
        this.b = locale;
        this.c = bool;
        this.f = z;
    }

    public static int b(int i, String str) {
        return (str.charAt(i + 1) - '0') + ((str.charAt(i) - '0') * 10);
    }

    public static int c(String str) {
        return (str.charAt(3) - '0') + ((str.charAt(2) - '0') * 10) + ((str.charAt(1) - '0') * 100) + ((str.charAt(0) - '0') * PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT);
    }

    public static void f(StringBuffer stringBuffer, int i) {
        int i2 = i / 10;
        if (i2 == 0) {
            stringBuffer.append('0');
        } else {
            stringBuffer.append((char) (i2 + 48));
            i -= i2 * 10;
        }
        stringBuffer.append((char) (i + 48));
    }

    public static void h(StringBuffer stringBuffer, int i) {
        int i2 = i / 100;
        if (i2 == 0) {
            stringBuffer.append('0');
            stringBuffer.append('0');
        } else {
            if (i2 > 99) {
                stringBuffer.append(i2);
            } else {
                f(stringBuffer, i2);
            }
            i -= i2 * 100;
        }
        f(stringBuffer, i);
    }

    public final Calendar a(TimeZone timeZone) {
        Calendar calendar = this.d;
        if (calendar == null) {
            calendar = (Calendar) y.clone();
            this.d = calendar;
        }
        if (!calendar.getTimeZone().equals(timeZone)) {
            calendar.setTimeZone(timeZone);
        }
        calendar.setLenient(isLenient());
        return calendar;
    }

    @Override // java.text.DateFormat, java.text.Format
    public final Object clone() {
        return new mn7(this.a, this.b, this.c, this.f);
    }

    public final Date d(String str) throws ParseException {
        String str2;
        int i;
        int iB;
        int length = str.length();
        Calendar calendarA = a((this.a == null || 'Z' == str.charAt(length + (-1))) ? q : this.a);
        calendarA.clear();
        int iCharAt = 0;
        if (length > 10) {
            Matcher matcher = n.matcher(str);
            if (matcher.matches()) {
                int iStart = matcher.start(2);
                int iEnd = matcher.end(2);
                int i2 = iEnd - iStart;
                if (i2 > 1) {
                    int iB2 = b(iStart + 1, str) * 3600;
                    if (i2 >= 5) {
                        iB2 += b(iEnd - 2, str) * 60;
                    }
                    calendarA.set(15, str.charAt(iStart) == '-' ? iB2 * (-1000) : iB2 * PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT);
                    calendarA.set(16, 0);
                }
                int iC = c(str);
                int iB3 = b(5, str) - 1;
                int iB4 = b(8, str);
                int iB5 = b(11, str);
                int iB6 = b(14, str);
                if (length <= 16 || str.charAt(16) != ':') {
                    i = iC;
                    iB = 0;
                } else {
                    i = iC;
                    iB = b(17, str);
                }
                calendarA.set(i, iB3, iB4, iB5, iB6, iB);
                int iStart2 = matcher.start(1);
                int i3 = iStart2 + 1;
                int iEnd2 = matcher.end(1);
                if (i3 >= iEnd2) {
                    calendarA.set(14, 0);
                } else {
                    int i4 = iEnd2 - i3;
                    if (i4 != 0) {
                        if (i4 != 1) {
                            if (i4 != 2) {
                                if (i4 != 3 && i4 > 9) {
                                    y5.e(i3, eq3.l("Cannot parse date \"", str, "\": invalid fractional seconds '", matcher.group(1).substring(1), "'; can use at most 9 digits"));
                                    return null;
                                }
                                iCharAt = str.charAt(iStart2 + 3) - '0';
                            }
                            iCharAt += (str.charAt(iStart2 + 2) - '0') * 10;
                        }
                        iCharAt += (str.charAt(i3) - '0') * 100;
                    }
                    calendarA.set(14, iCharAt);
                }
                return calendarA.getTime();
            }
            str2 = "yyyy-MM-dd'T'HH:mm:ss.SSSX";
        } else {
            if (k.matcher(str).matches()) {
                calendarA.set(c(str), b(5, str) - 1, b(8, str), 0, 0, 0);
                calendarA.set(14, 0);
                return calendarA.getTime();
            }
            str2 = "yyyy-MM-dd";
        }
        Boolean bool = this.c;
        StringBuilder sbP = u48.p("Cannot parse date \"", str, "\": while it seems to fit format '", str2, "', parsing fails (leniency? ");
        sbP.append(bool);
        sbP.append(")");
        throw new ParseException(sbP.toString(), 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0089, code lost:
    
        if (r3 < 0) goto L61;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Date e(java.lang.String r7, java.text.ParsePosition r8) throws java.text.ParseException {
        /*
            Method dump skipped, instruction units count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mn7.e(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    @Override // java.text.DateFormat
    public final boolean equals(Object obj) {
        return obj == this;
    }

    @Override // java.text.DateFormat
    public final StringBuffer format(Date date, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        TimeZone timeZone = this.a;
        if (timeZone == null) {
            timeZone = q;
        }
        Calendar calendarA = a(timeZone);
        calendarA.setTime(date);
        int i = calendarA.get(1);
        if (calendarA.get(0) != 0) {
            if (i > 9999) {
                stringBuffer.append('+');
            }
            h(stringBuffer, i);
        } else if (i == 1) {
            stringBuffer.append("+0000");
        } else {
            stringBuffer.append('-');
            h(stringBuffer, i - 1);
        }
        stringBuffer.append('-');
        f(stringBuffer, calendarA.get(2) + 1);
        stringBuffer.append('-');
        f(stringBuffer, calendarA.get(5));
        stringBuffer.append('T');
        f(stringBuffer, calendarA.get(11));
        stringBuffer.append(':');
        f(stringBuffer, calendarA.get(12));
        stringBuffer.append(':');
        f(stringBuffer, calendarA.get(13));
        stringBuffer.append('.');
        int i2 = calendarA.get(14);
        int i3 = i2 / 100;
        if (i3 == 0) {
            stringBuffer.append('0');
        } else {
            stringBuffer.append((char) (i3 + 48));
            i2 -= i3 * 100;
        }
        f(stringBuffer, i2);
        int offset = timeZone.getOffset(calendarA.getTimeInMillis());
        boolean z = this.f;
        if (offset == 0) {
            if (z) {
                stringBuffer.append("+00:00");
                return stringBuffer;
            }
            stringBuffer.append("+0000");
            return stringBuffer;
        }
        int i4 = offset / 60000;
        int iAbs = Math.abs(i4 / 60);
        int iAbs2 = Math.abs(i4 % 60);
        stringBuffer.append(offset < 0 ? '-' : '+');
        f(stringBuffer, iAbs);
        if (z) {
            stringBuffer.append(':');
        }
        f(stringBuffer, iAbs2);
        return stringBuffer;
    }

    @Override // java.text.DateFormat
    public final TimeZone getTimeZone() {
        return this.a;
    }

    @Override // java.text.DateFormat
    public final int hashCode() {
        return System.identityHashCode(this);
    }

    @Override // java.text.DateFormat
    public final boolean isLenient() {
        Boolean bool = this.c;
        return bool == null || bool.booleanValue();
    }

    @Override // java.text.DateFormat
    public final Date parse(String str) throws ParseException {
        String strTrim = str.trim();
        ParsePosition parsePosition = new ParsePosition(0);
        Date dateE = e(strTrim, parsePosition);
        if (dateE != null) {
            return dateE;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : p) {
            if (sb.length() > 0) {
                sb.append("\", \"");
            } else {
                sb.append('\"');
            }
            sb.append(str2);
        }
        sb.append('\"');
        y5.e(parsePosition.getErrorIndex(), eq3.l("Cannot parse date \"", strTrim, "\": not compatible with any of standard forms (", sb.toString(), ")"));
        return null;
    }

    @Override // java.text.DateFormat
    public final void setLenient(boolean z) {
        Boolean boolValueOf = Boolean.valueOf(z);
        Boolean bool = this.c;
        if (boolValueOf == bool || boolValueOf.equals(bool)) {
            return;
        }
        this.c = boolValueOf;
        this.e = null;
    }

    @Override // java.text.DateFormat
    public final void setTimeZone(TimeZone timeZone) {
        if (timeZone.equals(this.a)) {
            return;
        }
        this.e = null;
        this.a = timeZone;
    }

    public final String toString() {
        return String.format("DateFormat %s: (timezone: %s, locale: %s, lenient: %s)", mn7.class.getName(), this.a, this.b, this.c);
    }

    public mn7() {
        this.f = true;
        this.b = r;
    }

    @Override // java.text.DateFormat
    public final Date parse(String str, ParsePosition parsePosition) {
        try {
            return e(str, parsePosition);
        } catch (ParseException unused) {
            return null;
        }
    }
}
