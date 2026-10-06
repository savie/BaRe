package defpackage;

import java.time.ZonedDateTime;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "CopyObjectResult", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class qw1 extends a61 {

    @at2(name = "ETag")
    private String g;

    @at2(name = "LastModified")
    private h38.a h;

    @Override // defpackage.a61
    public String i() {
        String strE = ki8.e(this.g);
        String strE2 = ki8.e(this.h);
        String strI = super.i();
        StringBuilder sbP = u48.p("etag=", strE, ", lastModified=", strE2, ", ");
        sbP.append(strI);
        return sbP.toString();
    }

    public String j() {
        return this.g;
    }

    public ZonedDateTime k() {
        h38.a aVar = this.h;
        if (aVar == null) {
            return null;
        }
        return aVar.b();
    }

    @Override // defpackage.a61
    public String toString() {
        return eq3.k("CopyObjectResult{", i(), "}");
    }
}
