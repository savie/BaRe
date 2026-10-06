package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ay4 extends fw0 {
    private String f;
    private String g;
    private Integer h;
    private String i;
    private String j;
    private String k;
    private boolean l;
    private boolean m;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, ay4> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a F(String str) {
            this.a.add(new ho2(str, 3));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a G(String str) {
            this.a.add(new io2(str, 2));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a H(String str) {
            this.a.add(new qw4(str, 3));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a I(boolean z) {
            this.a.add(new sx4(1, z));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a J(boolean z) {
            this.a.add(new x02(1, z));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a S(Integer num) {
            int i = 1;
            if (num == null || num.intValue() >= 1) {
                this.a.add(new b10(num, i));
                return this;
            }
            c6.f("valid max keys must be provided");
            return null;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a T(String str) {
            this.a.add(new ew0(str, 2));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a U(String str) {
            this.a.add(new vx4(str, 1));
            return this;
        }
    }

    public ay4(wx4 wx4Var) {
        this.b = wx4Var.b();
        this.c = wx4Var.c();
        this.d = wx4Var.f();
        this.e = wx4Var.g();
        this.f = wx4Var.w();
        this.g = wx4Var.H() ? "url" : null;
        this.h = Integer.valueOf(wx4Var.C());
        this.i = wx4Var.D();
        this.j = wx4Var.F();
        this.k = wx4Var.v();
        this.l = wx4Var.x();
        this.m = wx4Var.y();
    }

    public static /* synthetic */ boolean h(ay4 ay4Var, boolean z) {
        ay4Var.m = z;
        return z;
    }

    public static /* synthetic */ boolean i(ay4 ay4Var, boolean z) {
        ay4Var.l = z;
        return z;
    }

    public static /* synthetic */ String j(ay4 ay4Var, String str) {
        ay4Var.k = str;
        return str;
    }

    public static /* synthetic */ String k(ay4 ay4Var, String str) {
        ay4Var.j = str;
        return str;
    }

    public static /* synthetic */ String n(ay4 ay4Var, String str) {
        ay4Var.g = str;
        return str;
    }

    public static a p() {
        return new a();
    }

    @Override // defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ay4) || !super.equals(obj)) {
            return false;
        }
        ay4 ay4Var = (ay4) obj;
        return Objects.equals(this.f, ay4Var.f) && Objects.equals(this.g, ay4Var.g) && Objects.equals(this.h, ay4Var.h) && Objects.equals(this.i, ay4Var.i) && Objects.equals(this.j, ay4Var.j) && Objects.equals(this.k, ay4Var.k) && this.l == ay4Var.l && this.m == ay4Var.m;
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f, this.g, this.h, this.i, this.j, this.k, Boolean.valueOf(this.l), Boolean.valueOf(this.m));
    }

    public String q() {
        return this.k;
    }

    public String r() {
        return this.f;
    }

    public String s() {
        return this.g;
    }

    public boolean t() {
        return this.l;
    }

    public boolean u() {
        return this.m;
    }

    public int v() {
        return this.h.intValue();
    }

    public String w() {
        return this.i;
    }

    public String x() {
        return this.j;
    }

    public ay4() {
    }
}
