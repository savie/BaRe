package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class nx4 extends fw0 {
    private String f;
    private String g;
    private Integer h;
    private String i;
    private String j;
    private String k;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, nx4> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a D(String str) {
            this.a.add(new dw0(str, 2));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a E(String str) {
            this.a.add(new lo2(str, 1));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a F(String str) {
            this.a.add(new ew0(str, 1));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a M(Integer num) {
            int i = 1;
            if (num == null || num.intValue() >= 1) {
                this.a.add(new v02(num, i));
                return this;
            }
            c6.f("valid max keys must be provided");
            return null;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a N(String str) {
            this.a.add(new v2(str, 1));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a O(String str) {
            this.a.add(new gn1(str, 1));
            return this;
        }
    }

    public static /* synthetic */ String h(nx4 nx4Var, String str) {
        nx4Var.k = str;
        return str;
    }

    public static /* synthetic */ String l(nx4 nx4Var, String str) {
        nx4Var.g = str;
        return str;
    }

    public static /* synthetic */ String m(nx4 nx4Var, String str) {
        nx4Var.f = str;
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
        if (!(obj instanceof nx4) || !super.equals(obj)) {
            return false;
        }
        nx4 nx4Var = (nx4) obj;
        return Objects.equals(this.f, nx4Var.f) && Objects.equals(this.g, nx4Var.g) && Objects.equals(this.h, nx4Var.h) && Objects.equals(this.i, nx4Var.i) && Objects.equals(this.j, nx4Var.j) && Objects.equals(this.k, nx4Var.k);
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

    public Integer r() {
        return this.h;
    }

    public String s() {
        return this.i;
    }

    public String t() {
        return this.k;
    }
}
