package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class cy4 extends yq5 {
    private String g;
    private Integer h;
    private Integer i;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, cy4> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a D(Integer num) {
            if (num == null || num.intValue() >= 1) {
                this.a.add(new fn1(num, 2));
                return this;
            }
            c6.f("valid max parts must be provided");
            return null;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a E(Integer num) {
            int i = 1;
            if (num == null || (num.intValue() >= 1 && num.intValue() <= 10000)) {
                this.a.add(new en1(num, i));
                return this;
            }
            c6.f("valid part number marker must be provided");
            return null;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a F(String str) {
            ki8.h(str, "upload ID");
            this.a.add(new gn1(str, 3));
            return this;
        }
    }

    public static a l() {
        return new a();
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cy4) || !super.equals(obj)) {
            return false;
        }
        cy4 cy4Var = (cy4) obj;
        return Objects.equals(this.g, cy4Var.g) && Objects.equals(this.h, cy4Var.h) && Objects.equals(this.i, cy4Var.i);
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.g, this.h, this.i);
    }

    public Integer m() {
        return this.h;
    }

    public Integer n() {
        return this.i;
    }

    public String o() {
        return this.g;
    }
}
