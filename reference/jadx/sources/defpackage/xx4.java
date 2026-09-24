package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class xx4 {
    private static final List<py4.a> h = ki8.f(null);

    @at2(name = "Name")
    private String a;

    @at2(name = "EncodingType", required = false)
    private String b;

    @at2(name = "Prefix", required = false)
    private String c;

    @at2(name = "Delimiter", required = false)
    private String d;

    @at2(name = "IsTruncated", required = false)
    private boolean e;

    @at2(name = "MaxKeys", required = false)
    private int f;

    @gt2(inline = true, name = "CommonPrefixes", required = false)
    private List<a> g;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "CommonPrefixes", strict = false)
    public static class a {

        @at2(name = "Prefix")
        private String a;

        public qg4 a() {
            return new wu1(this.a);
        }

        public String toString() {
            return eq3.k("Prefix{", ki8.e(this.a), "}");
        }
    }

    public List<a> a() {
        return ki8.f(this.g);
    }

    public abstract List b();

    public List<py4.a> c() {
        return h;
    }

    public String d() {
        return this.d;
    }

    public String e() {
        return this.b;
    }

    public boolean f() {
        return this.e;
    }

    public int g() {
        return this.f;
    }

    public String h() {
        return this.a;
    }

    public String i() {
        return ki8.g(this.c, this.b);
    }

    public String toString() {
        String strE = ki8.e(this.a);
        String strE2 = ki8.e(this.b);
        String strE3 = ki8.e(this.c);
        String strE4 = ki8.e(this.d);
        String strE5 = ki8.e(Boolean.valueOf(this.e));
        String strE6 = ki8.e(Integer.valueOf(this.f));
        String strE7 = ki8.e(this.g);
        String strE8 = ki8.e(h);
        StringBuilder sbP = u48.p("name=", strE, ", encodingType=", strE2, ", prefix=");
        xs1.t(sbP, strE3, ", delimiter=", strE4, ", isTruncated=");
        xs1.t(sbP, strE5, ", maxKeys=", strE6, ", commonPrefixes=");
        return eq3.n(sbP, strE7, ", deleteMarkers=", strE8);
    }
}
