package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "DeleteResult", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class wh2 {

    @gt2(inline = true, name = "Deleted", required = false)
    private List<a> a;

    @gt2(inline = true, name = "Error", required = false)
    private List<b> b;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Deleted", strict = false)
    public static class a {

        @at2(name = "Key")
        private String a;

        @at2(name = "VersionId", required = false)
        private String b;

        @at2(name = "DeleteMarker", required = false)
        private boolean c;

        @at2(name = "DeleteMarkerVersionId", required = false)
        private String d;

        public boolean a() {
            return this.c;
        }

        public String b() {
            return this.d;
        }

        public String c() {
            return this.a;
        }

        public String d() {
            return this.b;
        }

        public String toString() {
            String strE = ki8.e(this.a);
            String strE2 = ki8.e(this.b);
            return eq3.o(u48.p("Deleted{name=", strE, ", versionId=", strE2, ", deleteMarker="), ki8.e(Boolean.valueOf(this.c)), ", deleteMarkerVersionId=", ki8.e(this.d), "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Error", strict = false)
    @jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
    public static class b extends cy2 {
        private static final long p = 1905162041950251407L;

        @Override // defpackage.cy2
        public String toString() {
            return eq3.k("Error{", super.h(), "}");
        }
    }

    public wh2(b bVar) {
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        arrayList.add(bVar);
    }

    public List<b> a() {
        return ki8.f(this.b);
    }

    public List<a> b() {
        return ki8.f(this.a);
    }

    public String toString() {
        return eq3.l("DeleteResult{objects=", ki8.e(this.a), ", errors=", ki8.e(this.b), "}");
    }

    public wh2() {
    }
}
