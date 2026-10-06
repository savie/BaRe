package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "ListVersionsResult", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class py4 extends xx4 {

    @at2(name = "KeyMarker", required = false)
    private String i;

    @at2(name = "NextKeyMarker", required = false)
    private String j;

    @at2(name = "VersionIdMarker", required = false)
    private String k;

    @at2(name = "NextVersionIdMarker", required = false)
    private String l;

    @gt2(inline = true, name = "Version", required = false)
    private List<b> m;

    @gt2(inline = true, name = "DeleteMarker", required = false)
    private List<a> n;

    @Override // defpackage.xx4
    public List<b> b() {
        return ki8.f(this.m);
    }

    @Override // defpackage.xx4
    public List<a> c() {
        return ki8.f(this.n);
    }

    public String j() {
        return ki8.g(this.i, e());
    }

    public String k() {
        return ki8.g(this.j, e());
    }

    public String l() {
        return this.l;
    }

    public String m() {
        return this.k;
    }

    @Override // defpackage.xx4
    public String toString() {
        String string = super.toString();
        String strE = ki8.e(this.i);
        String strE2 = ki8.e(this.j);
        String strE3 = ki8.e(this.k);
        String strE4 = ki8.e(this.l);
        String strE5 = ki8.e(this.m);
        String strE6 = ki8.e(this.n);
        StringBuilder sbP = u48.p("ListVersionsResult{", string, ", keyMarker=", strE, ", nextKeyMarker=");
        xs1.t(sbP, strE2, ", versionIdMarker=", strE3, ", nextVersionIdMarker=");
        xs1.t(sbP, strE4, ", contents=", strE5, ", deleteMarkers=");
        return dj7.n(sbP, strE6, "}");
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "DeleteMarker", strict = false)
    public static class a extends qg4 {
        public a() {
        }

        @Override // defpackage.qg4
        public String toString() {
            return eq3.k("DeleteMarker{", super.toString(), "}");
        }

        public a(String str) {
            super(str);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Version", strict = false)
    public static class b extends qg4 {
        public b() {
        }

        @Override // defpackage.qg4
        public String toString() {
            return eq3.k("Version{", super.toString(), "}");
        }

        public b(String str) {
            super(str);
        }
    }
}
