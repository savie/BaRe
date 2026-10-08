package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "CreateBucketConfiguration")
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class z02 {

    @at2(name = "LocationConstraint")
    private String a;

    @at2(name = "Location", required = false)
    private b b;

    @at2(name = "Bucket", required = false)
    private a c;

    @at2(name = "Tags", required = false)
    private jx7 d;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Bucket", strict = false)
    public static class a {

        @at2(name = "DataRedundancy", required = false)
        private String a;

        @at2(name = "Type", required = false)
        private String b;

        public a(String str, String str2) {
            this.a = str;
            this.b = str2;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Location", strict = false)
    public static class b {

        @at2(name = "Name", required = false)
        private String a;

        @at2(name = "Type", required = false)
        private String b;

        public b(String str, String str2) {
            this.a = str;
            this.b = str2;
        }
    }

    public z02(String str, b bVar, a aVar, jx7 jx7Var) {
        this.a = str;
        this.b = bVar;
        this.c = aVar;
        this.d = jx7Var;
    }

    public z02(String str) {
        this.a = str;
    }
}
