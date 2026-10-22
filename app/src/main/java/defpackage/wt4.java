package defpackage;

import java.time.ZonedDateTime;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "LifecycleConfiguration")
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class wt4 {

    @gt2(inline = true, name = "Rule")
    private List<f> a;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "AbortIncompleteMultipartUpload")
    public static class a {

        @at2(name = "DaysAfterInitiation")
        private int a;

        public a(@at2(name = "DaysAfterInitiation") int i) {
            this.a = i;
        }

        public int a() {
            return this.a;
        }

        public String toString() {
            return String.format("AbortIncompleteMultipartUpload{daysAfterInitiation=%d}", Integer.valueOf(this.a));
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static abstract class b {

        @at2(name = "Date", required = false)
        protected h38.a a;

        @at2(name = "Days", required = false)
        protected Integer b;

        public ZonedDateTime a() {
            h38.a aVar = this.a;
            if (aVar == null) {
                return null;
            }
            return aVar.b();
        }

        public Integer b() {
            return this.b;
        }

        public String toString() {
            return dj7.l("date=", ki8.e(this.a), ", days=", ki8.e(this.b));
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "NoncurrentVersionExpiration")
    public static class d {

        @at2(name = "NoncurrentDays")
        private int a;

        @at2(name = "NewerNoncurrentVersions", required = false)
        private Integer b;

        public d(@at2(name = "NoncurrentDays", required = false) int i, @at2(name = "NewerNoncurrentVersions", required = false) Integer num) {
            this.a = i;
            this.b = num;
        }

        public Integer a() {
            return this.b;
        }

        public int b() {
            return this.a;
        }

        public String c() {
            return String.format("noncurrentDays=%d, newerNoncurrentVersions=%s", Integer.valueOf(this.a), ki8.e(this.b));
        }

        public String toString() {
            return eq3.k("NoncurrentVersionExpiration{", c(), "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "NoncurrentVersionTransition")
    public static class e extends d {

        @at2(name = "StorageClass")
        private String c;

        public e(@at2(name = "NoncurrentDays", required = false) int i, @at2(name = "NewerNoncurrentVersions", required = false) Integer num, @at2(name = "StorageClass", required = false) String str) {
            super(i, num);
            this.c = str;
        }

        public String d() {
            return this.c;
        }

        @Override // wt4.d
        public String toString() {
            return eq3.l("NoncurrentVersionTransition{", super.c(), ", storageClass=", this.c, "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Rule")
    public static class f {

        @at2(name = "AbortIncompleteMultipartUpload", required = false)
        private a a;

        @at2(name = "Expiration", required = false)
        private c b;

        @at2(name = "Filter", required = false)
        private pc3 c;

        @at2(name = "ID", required = false)
        private String d;

        @at2(name = "NoncurrentVersionExpiration", required = false)
        private d e;

        @at2(name = "NoncurrentVersionTransition", required = false)
        private e f;

        @at2(name = "Status")
        private xm7 g;

        @at2(name = "Transition", required = false)
        private g h;

        public f(@at2(name = "Status") xm7 xm7Var, @at2(name = "AbortIncompleteMultipartUpload", required = false) a aVar, @at2(name = "Expiration", required = false) c cVar, @at2(name = "Filter", required = false) pc3 pc3Var, @at2(name = "ID", required = false) String str, @at2(name = "NoncurrentVersionExpiration", required = false) d dVar, @at2(name = "NoncurrentVersionTransition", required = false) e eVar, @at2(name = "Transition", required = false) g gVar) {
            if (aVar == null && cVar == null && dVar == null && eVar == null && gVar == null) {
                c6.f("At least one of action (AbortIncompleteMultipartUpload, Expiration, NoncurrentVersionExpiration, NoncurrentVersionTransition or Transition) must be specified in a rule");
                throw null;
            }
            if (str != null) {
                str = str.trim();
                if (str.isEmpty()) {
                    c6.f("ID must be non-empty string");
                    throw null;
                }
                if (str.length() > 255) {
                    c6.f("ID must not exceed 255 characters");
                    throw null;
                }
            }
            this.a = aVar;
            this.b = cVar;
            this.c = pc3Var;
            this.d = str;
            this.e = dVar;
            this.f = eVar;
            Objects.requireNonNull(xm7Var, "Status must not be null");
            this.g = xm7Var;
            this.h = gVar;
        }

        public a a() {
            return this.a;
        }

        public c b() {
            return this.b;
        }

        public pc3 c() {
            return this.c;
        }

        public String d() {
            return this.d;
        }

        public d e() {
            return this.e;
        }

        public e f() {
            return this.f;
        }

        public xm7 g() {
            return this.g;
        }

        public g h() {
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
            StringBuilder sbP = u48.p("Rule{abortIncompleteMultipartUpload=", strE, ", expiration=", strE2, ", filter=");
            xs1.t(sbP, strE3, ", id=", strE4, ", noncurrentVersionExpiration=");
            xs1.t(sbP, strE5, ", noncurrentVersionTransition=", strE6, ", status=");
            return eq3.o(sbP, strE7, ", transition=", strE8, "}");
        }
    }

    public wt4(@gt2(inline = true, name = "Rule") List<f> list) {
        Objects.requireNonNull(list, "Rules must not be null");
        if (list.isEmpty()) {
            c6.f("Rules must not be empty");
            throw null;
        }
        zy5 zy5Var = ki8.a;
        this.a = Collections.unmodifiableList(list);
    }

    public List<f> a() {
        return this.a;
    }

    public String toString() {
        return eq3.k("LifecycleConfiguration{rules=", ki8.e(this.a), "}");
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Transition")
    public static class g extends b {

        @at2(name = "StorageClass")
        private String c;

        public g(@at2(name = "Date", required = false) h38.a aVar, @at2(name = "Days", required = false) Integer num, @at2(name = "StorageClass", required = false) String str) {
            if (!((num != null) ^ (aVar != null))) {
                c6.f("Only one of date or days must be set");
                throw null;
            }
            this.a = aVar;
            this.b = num;
            if (str == null || str.isEmpty()) {
                c6.f("StorageClass must be provided");
                throw null;
            }
            this.c = str;
        }

        public String c() {
            return this.c;
        }

        @Override // wt4.b
        public String toString() {
            return eq3.l("Transition{", super.toString(), ", storageClass=", this.c, "}");
        }

        public g(ZonedDateTime zonedDateTime, Integer num, String str) {
            this(zonedDateTime == null ? null : new h38.a(zonedDateTime), num, str);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Expiration")
    public static class c extends b {

        @at2(name = "ExpiredObjectDeleteMarker", required = false)
        private Boolean c;

        @at2(name = "ExpiredObjectAllVersions", required = false)
        private Boolean d;

        public c(@at2(name = "Date", required = false) h38.a aVar, @at2(name = "Days", required = false) Integer num, @at2(name = "ExpiredObjectDeleteMarker", required = false) Boolean bool, @at2(name = "ExpiredObjectAllVersions", required = false) Boolean bool2) {
            if (bool == null) {
                if (!((num != null) ^ (aVar != null))) {
                    c6.f("Only one of date or days must be set");
                    throw null;
                }
                this.a = aVar;
                this.b = num;
            } else if (aVar != null || num != null) {
                c6.f("ExpiredObjectDeleteMarker must not be provided along with Date and Days");
                throw null;
            }
            this.c = bool;
            this.d = bool2;
        }

        public Boolean c() {
            return this.d;
        }

        public Boolean d() {
            return this.c;
        }

        @Override // wt4.b
        public String toString() {
            String string = super.toString();
            String strE = ki8.e(this.c);
            return dj7.n(u48.p("Expiration{", string, ", expiredObjectDeleteMarker=", strE, ", expiredObjectAllVersions="), ki8.e(this.d), "}");
        }

        public c(ZonedDateTime zonedDateTime, Integer num, Boolean bool, Boolean bool2) {
            this(zonedDateTime == null ? null : new h38.a(zonedDateTime), num, bool, bool2);
        }
    }
}
