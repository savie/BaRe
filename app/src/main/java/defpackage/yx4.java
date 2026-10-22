package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class yx4 extends fw0 {
    private String f;
    private String g;
    private Integer h;
    private String i;
    private String j;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, yx4> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a C(String str) {
            this.a.add(new lo2(str, 3));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a D(String str) {
            this.a.add(new v02(str, 2));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a J(String str) {
            this.a.add(new v2(str, 3));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a K(Integer num) {
            if (num == null || num.intValue() >= 1) {
                this.a.add(new sh2(num, 2));
                return this;
            }
            c6.f("valid max keys must be provided");
            return null;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a L(String str) {
            this.a.add(new gn1(str, 2));
            return this;
        }
    }

    public yx4(wx4 wx4Var) {
        this.b = wx4Var.b();
        this.c = wx4Var.c();
        this.d = wx4Var.f();
        this.e = wx4Var.g();
        this.f = wx4Var.w();
        this.g = wx4Var.H() ? "url" : null;
        this.h = Integer.valueOf(wx4Var.C());
        this.i = wx4Var.D();
        this.j = wx4Var.A();
    }

    public static /* synthetic */ String h(yx4 yx4Var, String str) {
        yx4Var.j = str;
        return str;
    }

    public static /* synthetic */ String i(yx4 yx4Var, String str) {
        yx4Var.i = str;
        return str;
    }

    public static a m() {
        return new a();
    }

    @Override // defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yx4) || !super.equals(obj)) {
            return false;
        }
        yx4 yx4Var = (yx4) obj;
        return Objects.equals(this.f, yx4Var.f) && Objects.equals(this.g, yx4Var.g) && Objects.equals(this.h, yx4Var.h) && Objects.equals(this.i, yx4Var.i) && Objects.equals(this.j, yx4Var.j);
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f, this.g, this.h, this.i, this.j);
    }

    public String n() {
        return this.f;
    }

    public String o() {
        return this.g;
    }

    public String p() {
        return this.j;
    }

    public int q() {
        return this.h.intValue();
    }

    public String r() {
        return this.i;
    }

    public yx4() {
    }
}
