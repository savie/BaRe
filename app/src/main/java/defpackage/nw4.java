package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "ListBucketResult", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class nw4 extends xx4 {

    @at2(name = "Marker", required = false)
    private String i;

    @at2(name = "NextMarker", required = false)
    private String j;

    @gt2(inline = true, name = "Contents", required = false)
    private List<wu1> k;

    @Override // defpackage.xx4
    public List<wu1> b() {
        return ki8.f(this.k);
    }

    public String j() {
        return ki8.g(this.i, e());
    }

    public String k() {
        return ki8.g(this.j, e());
    }

    @Override // defpackage.xx4
    public String toString() {
        String string = super.toString();
        String strE = ki8.e(this.i);
        return eq3.o(u48.p("ListBucketResultV1{", string, ", marker=", strE, ", nextMarker="), ki8.e(this.j), ", contents=", ki8.e(this.k), "}");
    }
}
