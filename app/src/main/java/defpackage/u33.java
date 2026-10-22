package defpackage;

import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.ListIterator;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u33 extends Format {
    public static final t33 c = new t33();
    public final g53 a;
    public final l43 b;

    public u33(String str, TimeZone timeZone, Locale locale) {
        this.a = new g53(str, timeZone, locale);
        this.b = new l43(str, timeZone, locale);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof u33) {
            return this.a.equals(((u33) obj).a);
        }
        return false;
    }

    @Override // java.text.Format
    public final StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        String string;
        boolean z = obj instanceof Date;
        int i = 0;
        g53 g53Var = this.a;
        if (z) {
            Calendar calendar = Calendar.getInstance(g53Var.b, g53Var.c);
            calendar.setTime((Date) obj);
            StringBuilder sb = new StringBuilder(g53Var.e);
            s43[] s43VarArr = g53Var.d;
            int length = s43VarArr.length;
            while (i < length) {
                s43VarArr[i].a(sb, calendar);
                i++;
            }
            string = sb.toString();
        } else if (obj instanceof Calendar) {
            Calendar calendar2 = (Calendar) obj;
            StringBuilder sb2 = new StringBuilder(g53Var.e);
            TimeZone timeZone = calendar2.getTimeZone();
            TimeZone timeZone2 = g53Var.b;
            if (!timeZone.equals(timeZone2)) {
                calendar2 = (Calendar) calendar2.clone();
                calendar2.setTimeZone(timeZone2);
            }
            s43[] s43VarArr2 = g53Var.d;
            int length2 = s43VarArr2.length;
            while (i < length2) {
                s43VarArr2[i].a(sb2, calendar2);
                i++;
            }
            string = sb2.toString();
        } else {
            if (!(obj instanceof Long)) {
                g53Var.getClass();
                HashMap map = x81.a;
                throw new IllegalArgumentException("Unknown class: ".concat(obj == null ? "<null>" : obj.getClass().getName()));
            }
            long jLongValue = ((Long) obj).longValue();
            Calendar calendar3 = Calendar.getInstance(g53Var.b, g53Var.c);
            calendar3.setTimeInMillis(jLongValue);
            StringBuilder sb3 = new StringBuilder(g53Var.e);
            s43[] s43VarArr3 = g53Var.d;
            int length3 = s43VarArr3.length;
            while (i < length3) {
                s43VarArr3[i].a(sb3, calendar3);
                i++;
            }
            string = sb3.toString();
        }
        stringBuffer.append(string);
        return stringBuffer;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.text.Format
    public final Object parseObject(String str, ParsePosition parsePosition) {
        l43 l43Var = this.b;
        Calendar calendar = Calendar.getInstance(l43Var.b, l43Var.c);
        calendar.clear();
        ListIterator listIterator = l43Var.f.listIterator();
        while (listIterator.hasNext()) {
            i43 i43Var = (i43) listIterator.next();
            int i = 0;
            if (i43Var.a.a() && listIterator.hasNext()) {
                h43 h43Var = ((i43) listIterator.next()).a;
                listIterator.previous();
                if (h43Var.a()) {
                    i = i43Var.b;
                }
            }
            int i2 = i;
            String str2 = str;
            ParsePosition parsePosition2 = parsePosition;
            if (!i43Var.a.b(l43Var, calendar, str2, parsePosition2, i2)) {
                return null;
            }
            str = str2;
            parsePosition = parsePosition2;
        }
        return calendar.getTime();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FastDateFormat[");
        g53 g53Var = this.a;
        sb.append(g53Var.a);
        sb.append(",");
        sb.append(g53Var.c);
        sb.append(",");
        sb.append(g53Var.b.getID());
        sb.append("]");
        return sb.toString();
    }
}
