package defpackage;

import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "VersioningConfiguration", strict = false)
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class ck8 {

    @at2(name = "Status", required = false)
    private b a;

    @at2(name = "MfaDelete", required = false)
    private b b;

    @gt2(inline = true, name = "ExcludedPrefixes", required = false)
    private List<a> c;

    @at2(name = "ExcludeFolders", required = false)
    private Boolean d;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "ExcludedPrefixes")
    public static class a {

        @at2(name = "Prefix")
        private String a;

        public a(@at2(name = "Prefix") String str) {
            Objects.requireNonNull(str, "prefix must not be null");
            this.a = str;
        }

        public String a() {
            return this.a;
        }

        public String toString() {
            return eq3.k("Prefix{", ki8.e(this.a), "}");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "Status")
    @xv1(a.class)
    public enum b {
        OFF(""),
        ENABLED("Enabled"),
        SUSPENDED("Suspended");

        private final String a;

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static class a implements aw1 {
            @Override // defpackage.aw1
            public final void a(ev5 ev5Var, Object obj) {
                ev5Var.setValue(((b) obj).toString());
            }

            @Override // defpackage.aw1
            public final Object b(mc4 mc4Var) {
                return b.a(mc4Var.getValue());
            }
        }

        b(String str) {
            this.a = str;
        }

        public static b a(String str) {
            if ("Enabled".equals(str)) {
                return ENABLED;
            }
            return "Suspended".equals(str) ? SUSPENDED : OFF;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.a;
        }
    }

    public ck8(b bVar, b bVar2, List<a> list, Boolean bool) {
        Objects.requireNonNull(bVar, "Status must not be null");
        b bVar3 = b.OFF;
        if (bVar == bVar3) {
            c6.f("Status must be ENABLED or SUSPENDED");
            throw null;
        }
        if (bVar2 == bVar3) {
            c6.f("Status must be ENABLED or SUSPENDED");
            throw null;
        }
        this.a = bVar;
        this.b = bVar2;
        this.c = list;
        this.d = bool;
    }

    public Boolean a() {
        return this.d;
    }

    public List<a> b() {
        return this.c;
    }

    public Boolean c() {
        return Boolean.valueOf(this.b == b.ENABLED);
    }

    public b d() {
        return this.b;
    }

    public b e() {
        b bVar = this.a;
        return bVar == null ? b.OFF : bVar;
    }

    public String toString() {
        String strE = ki8.e(this.a);
        String strE2 = ki8.e(this.b);
        return eq3.o(u48.p("VersioningConfiguration{status=", strE, ", mfaDelete=", strE2, ", excludedPrefixes="), ki8.e(this.c), ", excludeFolders=", ki8.e(this.d), "}");
    }

    public ck8() {
    }
}
