package defpackage;

import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "AccessControlList")
public class q5 {

    @gt2(inline = true, name = "Grant")
    private List<a> a;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Grant")
    public static class a {

        @at2(name = "Grantee", required = false)
        private b a;

        @at2(name = "Permission", required = false)
        private c b;

        public a(@at2(name = "Grantee", required = false) b bVar, @at2(name = "Permission", required = false) c cVar) {
            if (bVar == null && cVar == null) {
                c6.f("Either Grantee or Permission must be provided");
                throw null;
            }
            this.a = bVar;
            this.b = cVar;
        }

        public b a() {
            return this.a;
        }

        public String b() {
            b bVar = this.a;
            if (bVar == null) {
                return null;
            }
            return bVar.c();
        }

        public String c() {
            b bVar = this.a;
            if (bVar == null) {
                return null;
            }
            return bVar.e();
        }

        public c d() {
            return this.b;
        }

        public String toString() {
            return eq3.l("Grant{grantee=", ki8.e(this.a), ", permission=", ki8.e(this.b), "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Permission")
    public enum c {
        FULL_CONTROL,
        WRITE,
        WRITE_ACP,
        READ,
        READ_ACP
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Type")
    @xv1(a.class)
    public enum d {
        CANONICAL_USER("CanonicalUser"),
        AMAZON_CUSTOMER_BY_EMAIL("AmazonCustomerByEmail"),
        GROUP("Group");

        private final String a;

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static class a implements aw1 {
            @Override // defpackage.aw1
            public final void a(ev5 ev5Var, Object obj) {
                ev5Var.setValue(((d) obj).toString());
            }

            @Override // defpackage.aw1
            public final Object b(mc4 mc4Var) {
                return d.a(mc4Var.getValue());
            }
        }

        d(String str) {
            this.a = str;
        }

        public static d a(String str) {
            for (d dVar : values()) {
                if (str.equals(dVar.a)) {
                    return dVar;
                }
            }
            c6.f(eq3.k("Unknown grantee type '", str, "'"));
            return null;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.a;
        }
    }

    public q5(@gt2(inline = true, name = "Grant") List<a> list) {
        Objects.requireNonNull(list, "Grants must not be null");
        if (list.size() == 0) {
            c6.f("Grants must not be empty");
            throw null;
        }
        zy5 zy5Var = ki8.a;
        this.a = Collections.unmodifiableList(list);
    }

    public List<a> a() {
        return ki8.f(this.a);
    }

    public String toString() {
        return eq3.k("AccessControlList{grants=", ki8.e(this.a), "}");
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Grantee")
    @jk5(prefix = "xsi", reference = "http://www.w3.org/2001/XMLSchema-instance")
    public static class b {

        @u70(name = "type")
        private String a;

        @at2(name = "DisplayName", required = false)
        private String b;

        @at2(name = "EmailAddress", required = false)
        private String c;

        @at2(name = "ID", required = false)
        private String d;

        @at2(name = "Type")
        private d e;

        @at2(name = "URI", required = false)
        private String f;

        public b(d dVar, String str, String str2, String str3, String str4) {
            Objects.requireNonNull(dVar, "Type must not be null");
            this.e = dVar;
            this.b = str;
            this.c = str2;
            this.d = str3;
            this.f = str4;
        }

        public String a() {
            return this.b;
        }

        public String b() {
            return this.c;
        }

        public String c() {
            return this.d;
        }

        public d d() {
            return this.e;
        }

        public String e() {
            return this.f;
        }

        public String toString() {
            String str = this.a;
            String strE = ki8.e(this.b);
            String strE2 = ki8.e(this.c);
            String strE3 = ki8.e(this.d);
            String strE4 = ki8.e(this.e);
            String strE5 = ki8.e(this.f);
            StringBuilder sbP = u48.p("Grantee{xsiType=", str, ", displayName=", strE, ", emailAddress=");
            xs1.t(sbP, strE2, ", id=", strE3, ", type=");
            return eq3.o(sbP, strE4, ", uri=", strE5, "}");
        }

        public b(@u70(name = "type") String str, @at2(name = "Type") d dVar, @at2(name = "DisplayName", required = false) String str2, @at2(name = "EmailAddress", required = false) String str3, @at2(name = "ID", required = false) String str4, @at2(name = "URI", required = false) String str5) {
            this(dVar, str2, str3, str4, str5);
            this.a = str;
        }
    }
}
