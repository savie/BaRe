package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "LegalHold", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class ht4 {

    @at2(name = "Status", required = false)
    private String a;

    public ht4(boolean z) {
        if (z) {
            this.a = "ON";
        } else {
            this.a = "OFF";
        }
    }

    public boolean a() {
        String str = this.a;
        return str != null && str.equals("ON");
    }

    public String toString() {
        return eq3.k("LegalHold{status=", ki8.e(this.a), "}");
    }

    public ht4() {
    }
}
