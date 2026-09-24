package okhttp3;

import defpackage.c6;
import defpackage.dj7;
import defpackage.fz5;
import defpackage.nq7;
import defpackage.pe4;
import defpackage.xs1;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.http.DateFormattingKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Cookie {
    public static final Pattern k = Pattern.compile("(\\d{2,4})[^\\d]*");
    public static final Pattern l = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    public static final Pattern m = Pattern.compile("(\\d{1,2})[^\\d]*");
    public static final Pattern n = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");
    public final String a;
    public final String b;
    public final long c;
    public final String d;
    public final String e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final String j;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Builder {
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public static int a(String str, int i, int i2, boolean z) {
            while (i < i2) {
                char cCharAt = str.charAt(i);
                if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || ('0' <= cCharAt && cCharAt < ':') || (('a' <= cCharAt && cCharAt < '{') || (('A' <= cCharAt && cCharAt < '[') || cCharAt == ':'))) == (!z)) {
                    return i;
                }
                i++;
            }
            return i2;
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0094  */
        public static long b(int i, String str) {
            int iA = a(str, 0, i, false);
            Matcher matcher = Cookie.n.matcher(str);
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int iH0 = -1;
            int i5 = -1;
            int i6 = -1;
            while (iA < i) {
                int iA2 = a(str, iA + 1, i, true);
                matcher.region(iA, iA2);
                if (i3 == -1 && matcher.usePattern(Cookie.n).matches()) {
                    String strGroup = matcher.group(1);
                    strGroup.getClass();
                    i3 = Integer.parseInt(strGroup);
                    String strGroup2 = matcher.group(2);
                    strGroup2.getClass();
                    i5 = Integer.parseInt(strGroup2);
                    String strGroup3 = matcher.group(3);
                    strGroup3.getClass();
                    i6 = Integer.parseInt(strGroup3);
                } else if (i4 == -1 && matcher.usePattern(Cookie.m).matches()) {
                    String strGroup4 = matcher.group(1);
                    strGroup4.getClass();
                    i4 = Integer.parseInt(strGroup4);
                } else if (iH0 == -1) {
                    Pattern pattern = Cookie.l;
                    if (matcher.usePattern(pattern).matches()) {
                        String strGroup5 = matcher.group(1);
                        strGroup5.getClass();
                        Locale locale = Locale.US;
                        String strQ = dj7.q(locale, strGroup5, locale);
                        String strPattern = pattern.pattern();
                        strPattern.getClass();
                        iH0 = nq7.h0(strPattern, strQ, 0, false, 6) / 4;
                    } else if (i2 != -1 && matcher.usePattern(Cookie.k).matches()) {
                        String strGroup6 = matcher.group(1);
                        strGroup6.getClass();
                        i2 = Integer.parseInt(strGroup6);
                    }
                } else if (i2 != -1) {
                }
                iA = a(str, iA2 + 1, i, false);
            }
            if (70 <= i2 && i2 < 100) {
                i2 += 1900;
            }
            if (i2 >= 0 && i2 < 70) {
                i2 += 2000;
            }
            if (i2 < 1601) {
                c6.f("Failed requirement.");
                return 0L;
            }
            if (iH0 == -1) {
                c6.f("Failed requirement.");
                return 0L;
            }
            if (1 > i4 || i4 >= 32) {
                c6.f("Failed requirement.");
                return 0L;
            }
            if (i3 < 0 || i3 >= 24) {
                c6.f("Failed requirement.");
                return 0L;
            }
            if (i5 < 0 || i5 >= 60) {
                c6.f("Failed requirement.");
                return 0L;
            }
            if (i6 < 0 || i6 >= 60) {
                c6.f("Failed requirement.");
                return 0L;
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(_UtilJvmKt.a);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i2);
            gregorianCalendar.set(2, iH0 - 1);
            gregorianCalendar.set(5, i4);
            gregorianCalendar.set(11, i3);
            gregorianCalendar.set(12, i5);
            gregorianCalendar.set(13, i6);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }
    }

    public Cookie(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, String str5) {
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = str3;
        this.e = str4;
        this.f = z;
        this.g = z2;
        this.h = z3;
        this.i = z4;
        this.j = str5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Cookie)) {
            return false;
        }
        Cookie cookie = (Cookie) obj;
        return cookie.a.equals(this.a) && cookie.b.equals(this.b) && cookie.c == this.c && cookie.d.equals(this.d) && cookie.e.equals(this.e) && cookie.f == this.f && cookie.g == this.g && cookie.h == this.h && cookie.i == this.i && pe4.d(cookie.j, this.j);
    }

    public final int hashCode() {
        int iH = fz5.h(fz5.h(fz5.h(fz5.h(fz5.g(fz5.g(xs1.f(this.c, fz5.g(fz5.g(527, 31, this.a), 31, this.b), 31), 31, this.d), 31, this.e), 31, this.f), 31, this.g), 31, this.h), 31, this.i);
        String str = this.j;
        return iH + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append('=');
        sb.append(this.b);
        if (this.h) {
            long j = this.c;
            if (j == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                String str = DateFormattingKt.a.get().format(new Date(j));
                str.getClass();
                sb.append(str);
            }
        }
        if (!this.i) {
            sb.append("; domain=");
            sb.append(this.d);
        }
        sb.append("; path=");
        sb.append(this.e);
        if (this.f) {
            sb.append("; secure");
        }
        if (this.g) {
            sb.append("; httponly");
        }
        String str2 = this.j;
        if (str2 != null) {
            sb.append("; samesite=");
            sb.append(str2);
        }
        return sb.toString();
    }
}
