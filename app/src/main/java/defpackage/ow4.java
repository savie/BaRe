package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "ListBucketResult", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class ow4 extends xx4 {

    @at2(name = "KeyCount", required = false)
    private int i;

    @at2(name = "StartAfter", required = false)
    private String j;

    @at2(name = "ContinuationToken", required = false)
    private String k;

    @at2(name = "NextContinuationToken", required = false)
    private String l;

    @gt2(inline = true, name = "Contents", required = false)
    private List<wu1> m;

    @Override // defpackage.xx4
    public List<wu1> b() {
        return ki8.f(this.m);
    }

    public String j() {
        return this.k;
    }

    public int k() {
        return this.i;
    }

    public String l() {
        return this.l;
    }

    public String m() {
        return ki8.g(this.j, e());
    }

    @Override // defpackage.xx4
    public String toString() {
        String string = super.toString();
        String strE = ki8.e(Integer.valueOf(this.i));
        String strE2 = ki8.e(this.j);
        String strE3 = ki8.e(this.k);
        String strE4 = ki8.e(this.l);
        String strE5 = ki8.e(this.m);
        StringBuilder sbP = u48.p("ListBucketResultV2{", string, ", keyCount=", strE, ", startAfter=");
        xs1.t(sbP, strE2, ", continuationToken=", strE3, ", nextContinuationToken=");
        return eq3.o(sbP, strE4, ", contents=", strE5, "}");
    }
}
