package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "Stats", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class wm7 {

    @at2(name = "BytesScanned", required = false)
    private Long a;

    @at2(name = "BytesProcessed", required = false)
    private Long b;

    @at2(name = "BytesReturned", required = false)
    private Long c;

    public wm7(@at2(name = "BytesScanned", required = false) Long l, @at2(name = "BytesProcessed", required = false) Long l2, @at2(name = "BytesReturned", required = false) Long l3) {
        this.a = l;
        this.b = l2;
        this.c = l3;
    }

    public Long a() {
        return this.b;
    }

    public Long b() {
        return this.c;
    }

    public Long c() {
        return this.a;
    }

    public String d() {
        return "bytesScanned=" + this.a + ", bytesProcessed=" + this.b + ", bytesReturned=" + this.c;
    }

    public String toString() {
        return eq3.k("Stats{", d(), "}");
    }
}
