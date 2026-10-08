package defpackage;

import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.time.temporal.ChronoField;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class h38 {
    public static final ZoneId a;
    public static final DateTimeFormatter b;
    public static final DateTimeFormatter c;
    public static final DateTimeFormatter d;
    public static final DateTimeFormatter e;

    static {
        ZoneId zoneIdOf = ZoneId.of("Z");
        a = zoneIdOf;
        Locale locale = Locale.US;
        b = DateTimeFormatter.ofPattern("yyyyMMdd'T'HHmmss'Z'", locale).withZone(zoneIdOf);
        c = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH':'mm':'ss'.'SSS'Z'", locale).withZone(zoneIdOf);
        d = DateTimeFormatter.ofPattern("yyyyMMdd", locale).withZone(zoneIdOf);
        e = DateTimeFormatter.ofPattern("EEE',' dd MMM yyyy HH':'mm':'ss 'GMT'", locale).withZone(zoneIdOf);
    }

    private h38() {
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6
    @xv1(C0011a.class)
    public static class a {
        private static final DateTimeFormatter b = new DateTimeFormatterBuilder().appendPattern("yyyy-MM-dd'T'HH':'mm':'ss").appendFraction(ChronoField.NANO_OF_SECOND, 0, 9, true).appendPattern("'Z'").toFormatter(Locale.US).withZone(h38.a);
        private ZonedDateTime a;

        /* JADX INFO: renamed from: h38$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static class C0011a implements aw1 {
            @Override // defpackage.aw1
            public final void a(ev5 ev5Var, Object obj) {
                ev5Var.setValue(((a) obj).toString());
            }

            @Override // defpackage.aw1
            public final Object b(mc4 mc4Var) {
                return a.a(mc4Var.getValue());
            }
        }

        public a(ZonedDateTime zonedDateTime) {
            this.a = zonedDateTime;
        }

        @fj4
        public static a a(String str) {
            return new a(ZonedDateTime.parse(str, b));
        }

        public ZonedDateTime b() {
            return this.a;
        }

        public String toString() {
            ZonedDateTime zonedDateTime = this.a;
            if (zonedDateTime == null) {
                return null;
            }
            return zonedDateTime.format(h38.c);
        }

        public a() {
        }
    }
}
