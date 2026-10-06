package defpackage;

import java.time.ZonedDateTime;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "ListAllMyBucketsResult", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class kw4 {

    @at2(name = "Owner")
    private kv5 a;

    @gt2(name = "Buckets")
    private List<a> b;

    @at2(name = "Prefix", required = false)
    private String c;

    @at2(name = "ContinuationToken", required = false)
    private String d;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Bucket", strict = false)
    public static class a {

        @at2(name = "Name")
        private String a;

        @at2(name = "CreationDate")
        private h38.a b;

        @at2(name = "BucketRegion", required = false)
        private String c;

        public String a() {
            return this.c;
        }

        public ZonedDateTime b() {
            h38.a aVar = this.b;
            if (aVar == null) {
                return null;
            }
            return aVar.b();
        }

        public String c() {
            return this.a;
        }

        public String toString() {
            String strE = ki8.e(this.a);
            String strE2 = ki8.e(this.b);
            return dj7.n(u48.p("Bucket{name=", strE, ", creationDate=", strE2, ", bucketRegion="), ki8.e(this.c), "}");
        }
    }

    public List<a> a() {
        return ki8.f(this.b);
    }

    public String b() {
        return this.d;
    }

    public kv5 c() {
        return this.a;
    }

    public String d() {
        return this.c;
    }

    public String toString() {
        String strE = ki8.e(this.a);
        String strE2 = ki8.e(this.b);
        return eq3.o(u48.p("ListAllMyBucketsResult{owner=", strE, ", buckets=", strE2, ", prefix="), ki8.e(this.c), ", continuationToken=", ki8.e(this.d), "}");
    }
}
