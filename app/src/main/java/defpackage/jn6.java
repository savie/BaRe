package defpackage;

import java.time.ZonedDateTime;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "Retention", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class jn6 {

    @at2(name = "Mode", required = false)
    private kn6 a;

    @at2(name = "RetainUntilDate", required = false)
    private h38.a b;

    public jn6(kn6 kn6Var, ZonedDateTime zonedDateTime) {
        if (kn6Var == null) {
            c6.f("null mode is not allowed");
            throw null;
        }
        if (zonedDateTime == null) {
            c6.f("null retainUntilDate is not allowed");
            throw null;
        }
        this.a = kn6Var;
        this.b = new h38.a(zonedDateTime);
    }

    public kn6 a() {
        return this.a;
    }

    public ZonedDateTime b() {
        h38.a aVar = this.b;
        if (aVar == null) {
            return null;
        }
        return aVar.b();
    }

    public String toString() {
        return eq3.l("Retention{mode=", ki8.e(this.a), ", retainUntilDate=", ki8.e(this.b), "}");
    }

    public jn6() {
    }
}
