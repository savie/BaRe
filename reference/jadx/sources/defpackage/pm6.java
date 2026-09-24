package defpackage;

import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "RestoreRequest")
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class pm6 {

    @at2(name = "Days", required = false)
    private Integer a;

    @at2(name = "GlacierJobParameters", required = false)
    private c b;

    @at2(name = "Type", required = false)
    private String c;

    @at2(name = "Tier", required = false)
    private g d;

    @at2(name = "Description", required = false)
    private String e;

    @at2(name = "SelectParameters", required = false)
    private f f;

    @at2(name = "OutputLocation", required = false)
    private d g;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "CannedAcl")
    @xv1(C0015a.class)
    public enum a {
        PRIVATE("private"),
        PUBLIC_READ("public-read"),
        PUBLIC_READ_WRITE("public-read-write"),
        AUTHENTICATED_READ("authenticated-read"),
        AWS_EXEC_READ("aws-exec-read"),
        BUCKET_OWNER_READ("bucket-owner-read"),
        BUCKET_OWNER_FULL_CONTROL("bucket-owner-full-control");

        private final String a;

        /* JADX INFO: renamed from: pm6$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static class C0015a implements aw1 {
            @Override // defpackage.aw1
            public final void a(ev5 ev5Var, Object obj) {
                ev5Var.setValue(((a) obj).toString());
            }

            @Override // defpackage.aw1
            public final Object b(mc4 mc4Var) {
                return a.a(mc4Var.getValue());
            }
        }

        a(String str) {
            this.a = str;
        }

        @fj4
        public static a a(String str) {
            for (a aVar : values()) {
                if (str.equals(aVar.a)) {
                    return aVar;
                }
            }
            c6.f(eq3.k("Unknown canned ACL '", str, "'"));
            return null;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.a;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Encryption")
    public static class b {

        @at2(name = "EncryptionType")
        private pk7 a;

        @at2(name = "KMSContext", required = false)
        private String b;

        @at2(name = "KMSKeyId", required = false)
        private String c;

        public b(pk7 pk7Var, String str, String str2) {
            Objects.requireNonNull(pk7Var, "Encryption type must not be null");
            this.a = pk7Var;
            this.b = str;
            this.c = str2;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "GlacierJobParameters")
    public static class c {

        @at2(name = "Tier")
        private g a;

        public c(g gVar) {
            Objects.requireNonNull(gVar, "Tier must not be null");
            this.a = gVar;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "OutputLocation")
    public static class d {

        @at2(name = "S3")
        private e a;

        public d(e eVar) {
            Objects.requireNonNull(eVar, "S3 must not be null");
            this.a = eVar;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "S3")
    public static class e {

        @at2(name = "AccessControlList", required = false)
        private q5 a;

        @at2(name = "BucketName")
        private String b;

        @at2(name = "CannedACL", required = false)
        private a c;

        @at2(name = "Encryption", required = false)
        private b d;

        @at2(name = "Prefix")
        private String e;

        @at2(name = "StorageClass", required = false)
        private String f;

        @at2(name = "Tagging", required = false)
        private jx7 g;

        @at2(name = "UserMetadata", required = false)
        private h h;

        public e(String str, String str2, q5 q5Var, a aVar, b bVar, String str3, jx7 jx7Var, h hVar) {
            Objects.requireNonNull(str, "Bucket name must not be null");
            this.b = str;
            Objects.requireNonNull(str2, "Prefix must not be null");
            this.e = str2;
            this.a = q5Var;
            this.c = aVar;
            this.d = bVar;
            this.f = str3;
            this.g = jx7Var;
            this.h = hVar;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "SelectParameters")
    public static class f extends dn0 {
        public f(String str, oc4 oc4Var, gv5 gv5Var) {
            super(str, oc4Var, gv5Var);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Tier")
    @xv1(a.class)
    public enum g {
        STANDARD("Standard"),
        BULK("Bulk"),
        EXPEDITED("Expedited");

        private final String a;

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static class a implements aw1 {
            @Override // defpackage.aw1
            public final void a(ev5 ev5Var, Object obj) {
                ev5Var.setValue(((g) obj).toString());
            }

            @Override // defpackage.aw1
            public final Object b(mc4 mc4Var) {
                return g.a(mc4Var.getValue());
            }
        }

        g(String str) {
            this.a = str;
        }

        @fj4
        public static g a(String str) {
            for (g gVar : values()) {
                if (str.equals(gVar.a)) {
                    return gVar;
                }
            }
            c6.f(eq3.k("Unknown tier '", str, "'"));
            return null;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.a;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "UserMetadata", strict = false)
    @jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
    public static class h {

        @mt2(attribute = false, entry = "MetadataEntry", inline = true, key = "Name", required = false, value = "Value")
        Map<String, String> a;

        private h(Map<String, String> map) {
            Objects.requireNonNull(map, "Metadata entries must not be null");
            if (map.size() == 0) {
                c6.f("Metadata entries must not be empty");
                throw null;
            }
            zy5 zy5Var = ki8.a;
            this.a = Collections.unmodifiableMap(map);
        }
    }

    public pm6(Integer num, c cVar, g gVar, String str, f fVar, d dVar) {
        this.a = num;
        this.b = cVar;
        if (fVar != null) {
            this.c = "SELECT";
        }
        this.d = gVar;
        this.e = str;
        this.f = fVar;
        this.g = dVar;
    }
}
