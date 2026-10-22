package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.text.DateFormatSymbols;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p23 implements or1 {
    public static final int[] f = {14, 13, 12, 11, 5, 2, 1};
    public SimpleDateFormat a;
    public int b;
    public SimpleDateFormat c;
    public int d;
    public boolean e;

    public p23() {
        e("MMM d yyyy", null);
        f("MMM d HH:mm", null);
    }

    public static int b(SimpleDateFormat simpleDateFormat) {
        if (simpleDateFormat == null) {
            return 0;
        }
        String pattern = simpleDateFormat.toPattern();
        char[] cArr = {'S', 's', 'm', 'H', 'd', 'M'};
        for (int i = 0; i < 6; i++) {
            char c = cArr[i];
            if (pattern.indexOf(c) != -1) {
                if (c == 'H') {
                    return c(11);
                }
                if (c == 'M') {
                    return c(2);
                }
                if (c == 'S') {
                    return c(14);
                }
                if (c == 'd') {
                    return c(5);
                }
                if (c == 'm') {
                    return c(12);
                }
                if (c == 's') {
                    return c(13);
                }
            }
        }
        return 0;
    }

    public static int c(int i) {
        for (int i2 = 0; i2 < 7; i2++) {
            if (i == f[i2]) {
                return i2;
            }
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x005a  */
    @Override // defpackage.or1
    public final void a(e23 e23Var) {
        DateFormatSymbols dateFormatSymbols;
        e23Var.getClass();
        Object obj = e23.e.get("en");
        if (obj == null) {
            dateFormatSymbols = new DateFormatSymbols(Locale.US);
        } else if (obj instanceof Locale) {
            dateFormatSymbols = new DateFormatSymbols((Locale) obj);
        } else if (obj instanceof String) {
            StringTokenizer stringTokenizer = new StringTokenizer((String) obj, "|");
            if (12 == stringTokenizer.countTokens()) {
                String[] strArr = new String[13];
                int i = 0;
                while (stringTokenizer.hasMoreTokens()) {
                    strArr[i] = stringTokenizer.nextToken();
                    i++;
                }
                strArr[i] = "";
                dateFormatSymbols = new DateFormatSymbols(Locale.US);
                dateFormatSymbols.setShortMonths(strArr);
            } else {
                c6.f("expecting a pipe-delimited string containing 12 tokens");
                dateFormatSymbols = null;
            }
        } else {
            dateFormatSymbols = new DateFormatSymbols(Locale.US);
        }
        f(e23Var.c, dateFormatSymbols);
        String str = e23Var.b;
        if (str == null) {
            c6.f("defaultFormatString cannot be null");
            return;
        }
        e(str, dateFormatSymbols);
        TimeZone timeZone = TimeZone.getDefault();
        this.a.setTimeZone(timeZone);
        SimpleDateFormat simpleDateFormat = this.c;
        if (simpleDateFormat != null) {
            simpleDateFormat.setTimeZone(timeZone);
        }
        this.e = e23Var.d;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00a3  */
    public final Calendar d(String str) throws ParseException {
        ParsePosition parsePosition;
        Date date;
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = (Calendar) calendar.clone();
        calendar2.setTimeZone(this.a.getTimeZone());
        SimpleDateFormat simpleDateFormat = this.c;
        int[] iArr = f;
        if (simpleDateFormat == null) {
            parsePosition = new ParsePosition(0);
            date = this.a.parse(str, parsePosition);
            if (date != null) {
            }
            StringBuilder sbU = dj7.u("Timestamp '", str, "' could not be parsed using a server time of ");
            sbU.append(calendar.getTime().toString());
            y5.e(parsePosition.getErrorIndex(), sbU.toString());
            return null;
        }
        Calendar calendar3 = (Calendar) calendar.clone();
        calendar3.setTimeZone(this.a.getTimeZone());
        if (this.e) {
            calendar3.add(5, 1);
        }
        String strK = dj7.k(str, TokenAuthenticationScheme.SCHEME_DELIMITER, Integer.toString(calendar3.get(1)));
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(this.c.toPattern() + " yyyy", this.c.getDateFormatSymbols());
        simpleDateFormat2.setLenient(false);
        simpleDateFormat2.setTimeZone(this.c.getTimeZone());
        ParsePosition parsePosition2 = new ParsePosition(0);
        Date date2 = simpleDateFormat2.parse(strK, parsePosition2);
        if (date2 == null || parsePosition2.getIndex() != strK.length()) {
            parsePosition = new ParsePosition(0);
            date = this.a.parse(str, parsePosition);
            if (date != null || parsePosition.getIndex() != str.length()) {
                StringBuilder sbU2 = dj7.u("Timestamp '", str, "' could not be parsed using a server time of ");
                sbU2.append(calendar.getTime().toString());
                y5.e(parsePosition.getErrorIndex(), sbU2.toString());
                return null;
            }
            calendar2.setTime(date);
            int i = this.b;
            if (i > 0) {
                int i2 = iArr[i - 1];
                if (calendar2.get(i2) == 0) {
                    calendar2.clear(i2);
                    return calendar2;
                }
            }
        } else {
            calendar2.setTime(date2);
            if (calendar2.after(calendar3)) {
                calendar2.add(1, -1);
            }
            int i3 = this.d;
            if (i3 > 0) {
                int i4 = iArr[i3 - 1];
                if (calendar2.get(i4) == 0) {
                    calendar2.clear(i4);
                    return calendar2;
                }
            }
        }
        return calendar2;
    }

    public final void e(String str, DateFormatSymbols dateFormatSymbols) {
        if (str != null) {
            if (dateFormatSymbols != null) {
                this.a = new SimpleDateFormat(str, dateFormatSymbols);
            } else {
                this.a = new SimpleDateFormat(str);
            }
            this.a.setLenient(false);
        } else {
            this.a = null;
        }
        this.b = b(this.a);
    }

    public final void f(String str, DateFormatSymbols dateFormatSymbols) {
        if (str != null) {
            if (dateFormatSymbols != null) {
                this.c = new SimpleDateFormat(str, dateFormatSymbols);
            } else {
                this.c = new SimpleDateFormat(str);
            }
            this.c.setLenient(false);
        } else {
            this.c = null;
        }
        this.d = b(this.c);
    }
}
