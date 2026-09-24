package defpackage;

import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w43 implements s43 {
    public final Locale a;
    public final int b;
    public final String c;
    public final String d;

    public w43(int i, Locale locale, TimeZone timeZone) {
        int i2 = k05.a;
        this.a = locale != null ? locale : Locale.getDefault();
        this.b = i;
        this.c = g53.c(timeZone, false, i, locale);
        this.d = g53.c(timeZone, true, i, locale);
    }

    @Override // defpackage.s43
    public final void a(StringBuilder sb, Calendar calendar) {
        sb.append((CharSequence) g53.c(calendar.getTimeZone(), calendar.get(16) != 0, this.b, this.a));
    }

    @Override // defpackage.s43
    public final int c() {
        return Math.max(this.c.length(), this.d.length());
    }
}
