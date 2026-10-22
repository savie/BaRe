package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class px4 extends fw0 {
    private String f;
    private String g;
    private Integer h;
    private String i;
    private String j;
    private String k;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, px4> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a D(String str) {
            this.a.add(new z00(str, 1));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a E(String str) {
            this.a.add(new io2(str, 1));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a F(String str) {
            this.a.add(new pw4(str, 1));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a M(Integer num) {
            if (num == null || num.intValue() >= 1) {
                this.a.add(new mw1(num, 2));
                return this;
            }
            c6.f("valid max keys must be provided");
            return null;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a N(String str) {
            this.a.add(new qw4(str, 1));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a O(String str) {
            this.a.add(new a10(str, 4));
            return this;
        }
    }

    public px4(wx4 wx4Var) {
        this.b = wx4Var.b();
        this.c = wx4Var.c();
        this.d = wx4Var.f();
        this.e = wx4Var.g();
        this.f = wx4Var.w();
        this.g = wx4Var.H() ? "url" : null;
        this.h = Integer.valueOf(wx4Var.C());
        this.i = wx4Var.D();
        this.j = wx4Var.A();
        this.k = wx4Var.I();
    }

    public static /* synthetic */ String h(px4 px4Var, String str) {
        px4Var.k = str;
        return str;
    }

    public static /* synthetic */ String j(px4 px4Var, String str) {
        px4Var.i = str;
        return str;
    }

    public static /* synthetic */ String m(px4 px4Var, String str) {
        px4Var.f = str;
        return str;
    }

    public static a n() {
        return new a();
    }

    @Override // defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof px4) || !super.equals(obj)) {
            return false;
        }
        px4 px4Var = (px4) obj;
        return Objects.equals(this.f, px4Var.f) && Objects.equals(this.g, px4Var.g) && Objects.equals(this.h, px4Var.h) && Objects.equals(this.i, px4Var.i) && Objects.equals(this.j, px4Var.j) && Objects.equals(this.k, px4Var.k);
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f, this.g, this.h, this.i, this.j, this.k);
    }

    public String o() {
        return this.f;
    }

    public String p() {
        return this.g;
    }

    public String q() {
        return this.j;
    }

    public int r() {
        return this.h.intValue();
    }

    public String s() {
        return this.i;
    }

    public String t() {
        return this.k;
    }

    public px4() {
    }
}
