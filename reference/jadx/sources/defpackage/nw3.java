package defpackage;

import java.time.ZonedDateTime;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "GetObjectAttributesOutput", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class nw3 {

    @at2(name = "ETag", required = false)
    private String a;

    @at2(name = "Checksum", required = false)
    private a61 b;

    @at2(name = "ObjectParts", required = false)
    private a c;

    @at2(name = "StorageClass", required = false)
    private String d;

    @at2(name = "ObjectSize", required = false)
    private Long e;
    private Boolean f;
    private ZonedDateTime g;
    private String h;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "ObjectParts", strict = false)
    public static class a extends dm0 {

        @at2(name = "PartsCount", required = false)
        private Integer f;

        public Integer f() {
            return this.f;
        }

        @Override // defpackage.dm0
        public String toString() {
            return eq3.l("ObjectParts{partsCount=", ki8.e(this.f), ", ", super.toString(), "}");
        }
    }

    public a61 a() {
        return this.b;
    }

    public Boolean b() {
        return this.f;
    }

    public String c() {
        return this.a;
    }

    public ZonedDateTime d() {
        return this.g;
    }

    public a e() {
        return this.c;
    }

    public Long f() {
        return this.e;
    }

    public void g(boolean z) {
        this.f = Boolean.valueOf(z);
    }

    public void h(ZonedDateTime zonedDateTime) {
        this.g = zonedDateTime;
    }

    public void i(String str) {
        this.h = str;
    }

    public String j() {
        return this.d;
    }

    public String k() {
        return this.h;
    }

    public String toString() {
        String strE = ki8.e(this.a);
        String strE2 = ki8.e(this.b);
        String strE3 = ki8.e(this.c);
        String strE4 = ki8.e(this.d);
        String strE5 = ki8.e(this.e);
        String strE6 = ki8.e(this.f);
        String strE7 = ki8.e(this.g);
        String strE8 = ki8.e(this.h);
        StringBuilder sbP = u48.p("GetObjectAttributesOutput{etag=", strE, ", checksum=", strE2, ", objectParts=");
        xs1.t(sbP, strE3, ", storageClass=", strE4, ", objectSize=");
        xs1.t(sbP, strE5, ", deleteMarker=", strE6, ", lastModified=");
        return eq3.o(sbP, strE7, ", versionId=", strE8, "}");
    }
}
