package defpackage;

import java.time.ZonedDateTime;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "Part", strict = false)
public class gx5 extends a61 {

    @at2(name = "PartNumber", required = false)
    private int g;

    @at2(name = "ETag", required = false)
    private String h;

    @at2(name = "LastModified", required = false)
    private h38.a i;

    @at2(name = "Size", required = false)
    private Long j;

    public gx5(int i, String str, String str2, String str3, String str4, String str5, String str6) {
        super(str2, str3, str4, str5, str6, null);
        this.g = i;
        this.h = str;
    }

    public String j() {
        return this.h.replaceAll("\"", "");
    }

    public ZonedDateTime k() {
        h38.a aVar = this.i;
        if (aVar == null) {
            return null;
        }
        return aVar.b();
    }

    public int l() {
        return this.g;
    }

    public long m() {
        return this.j.longValue();
    }

    @Override // defpackage.a61
    public String toString() {
        String strE = ki8.e(Integer.valueOf(this.g));
        String strE2 = ki8.e(this.h);
        String strE3 = ki8.e(this.i);
        String strE4 = ki8.e(this.j);
        String strI = super.i();
        StringBuilder sbP = u48.p("Part{partNumber=", strE, ", etag=", strE2, ", lastModified=");
        xs1.t(sbP, strE3, ", size=", strE4, ", ");
        return dj7.n(sbP, strI, "}");
    }

    public gx5(int i, String str) {
        this.g = i;
        this.h = str;
    }

    public gx5() {
    }

    public gx5(rw1 rw1Var, int i) {
        super(rw1Var);
        this.h = rw1Var.j();
        this.g = i;
    }
}
