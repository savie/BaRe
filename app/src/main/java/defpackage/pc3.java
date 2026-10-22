package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "Filter")
public class pc3 {

    @at2(name = "And", required = false)
    private a a;

    @at2(name = "Prefix", required = false)
    @xv1(cq7.class)
    private String b;

    @at2(name = "Tag", required = false)
    private gx7 c;

    @at2(name = "ObjectSizeLessThan", required = false)
    private Long d;

    @at2(name = "ObjectSizeGreaterThan", required = false)
    private Long e;

    public pc3(@at2(name = "And", required = false) a aVar, @at2(name = "Prefix", required = false) String str, @at2(name = "Tag", required = false) gx7 gx7Var, @at2(name = "ObjectSizeLessThan", required = false) Long l, @at2(name = "ObjectSizeGreaterThan", required = false) Long l2) {
        if (!((gx7Var != null) ^ ((aVar != null) ^ (str != null)))) {
            c6.f("Only one of And, Prefix or Tag must be set");
            throw null;
        }
        this.a = aVar;
        this.b = str;
        this.c = gx7Var;
        this.d = l;
        this.e = l2;
    }

    public a a() {
        return this.a;
    }

    public Long b() {
        return this.e;
    }

    public Long c() {
        return this.d;
    }

    public String d() {
        return this.b;
    }

    public gx7 e() {
        return this.c;
    }

    public String toString() {
        String strE = ki8.e(this.a);
        String strE2 = ki8.e(this.b);
        String strE3 = ki8.e(this.c);
        String strE4 = ki8.e(this.d);
        String strE5 = ki8.e(this.e);
        StringBuilder sbP = u48.p("Filter{andOperator=", strE, ", prefix=", strE2, ", tag=");
        xs1.t(sbP, strE3, ", objectSizeLessThan=", strE4, ", objectSizeGreaterThan=");
        return dj7.n(sbP, strE5, "}");
    }

    public pc3(String str) {
        Objects.requireNonNull(str, "Prefix must not be null");
        this.b = str;
    }

    public pc3(gx7 gx7Var) {
        Objects.requireNonNull(gx7Var, "Tag must not be null");
        this.c = gx7Var;
    }

    public pc3(a aVar) {
        Objects.requireNonNull(aVar, "And operator must not be null");
        this.a = aVar;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "And")
    public static class a {

        @at2(name = "Prefix", required = false)
        @xv1(cq7.class)
        private String a;

        @at2(name = "ObjectSizeLessThan", required = false)
        private Long b;

        @at2(name = "ObjectSizeGreaterThan", required = false)
        private Long c;

        @gt2(entry = "Tag", inline = true, required = false)
        private List<gx7> d;

        public a(String str, Map<String, String> map, Long l, Long l2) {
            if (map != null) {
                this.d = new ArrayList();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    this.d.add(new gx7(entry.getKey(), entry.getValue()));
                }
            }
            d(str, null, l, l2);
        }

        private void d(String str, List<gx7> list, Long l, Long l2) {
            if (str == null && list == null) {
                c6.f("At least Prefix or Tags must be set");
                return;
            }
            this.a = str;
            this.d = ki8.f(list);
            this.b = l;
            this.c = l2;
        }

        public Long a() {
            return this.c;
        }

        public Long b() {
            return this.b;
        }

        public String c() {
            return this.a;
        }

        public List<gx7> e() {
            return this.d;
        }

        public String toString() {
            String strE = ki8.e(this.a);
            String strE2 = ki8.e(this.b);
            return eq3.o(u48.p("And{prefix=", strE, ", objectSizeLessThan=", strE2, ", objectSizeGreaterThan="), ki8.e(this.c), ", tags=", ki8.e(this.d), "}");
        }

        public a(@at2(name = "Prefix", required = false) String str, @gt2(entry = "Tag", inline = true, required = false) List<gx7> list, @at2(name = "ObjectSizeLessThan", required = false) Long l, @at2(name = "ObjectSizeGreaterThan", required = false) Long l2) {
            d(str, list, l, l2);
        }
    }
}
