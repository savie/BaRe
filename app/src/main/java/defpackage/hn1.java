package defpackage;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class hn1 extends yq5 {
    private String g;
    private gx5[] h;
    private g87.a i;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends yq5.a<a, hn1> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a I(gx5[] gx5VarArr) {
            ki8.i(gx5VarArr, "parts");
            this.a.add(new fn1(gx5VarArr, 0));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a J(g87.a aVar) {
            this.a.add(new en1(aVar, 0));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a K(String str) {
            ki8.h(str, "upload ID");
            this.a.add(new gn1(str, 0));
            return this;
        }

        @Override // yq5.a, fw0.a
        /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
        public void u(hn1 hn1Var) {
            super.u(hn1Var);
            ki8.h(hn1Var.g, "upload ID");
            ki8.i(hn1Var.h, "parts");
        }
    }

    public hn1(dc6 dc6Var, String str, gx5[] gx5VarArr) {
        super(dc6Var);
        this.g = str;
        this.h = gx5VarArr;
        if (dc6Var.q() == null || !(dc6Var.q() instanceof g87.a)) {
            return;
        }
        this.i = (g87.a) dc6Var.q();
    }

    public static /* synthetic */ String j(hn1 hn1Var, String str) {
        hn1Var.g = str;
        return str;
    }

    public static /* synthetic */ gx5[] l(hn1 hn1Var, gx5[] gx5VarArr) {
        hn1Var.h = gx5VarArr;
        return gx5VarArr;
    }

    public static /* synthetic */ g87.a m(hn1 hn1Var, g87.a aVar) {
        hn1Var.i = aVar;
        return aVar;
    }

    public static a n() {
        return new a();
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hn1) || !super.equals(obj)) {
            return false;
        }
        hn1 hn1Var = (hn1) obj;
        return Objects.equals(this.g, hn1Var.g) && Arrays.equals(this.h, hn1Var.h) && Objects.equals(this.i, hn1Var.i);
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.g, this.h, this.i);
    }

    public gx5[] o() {
        return this.h;
    }

    public g87.a p() {
        return this.i;
    }

    public String q() {
        return this.g;
    }

    public void r(boolean z) {
        a(this.i, z);
    }

    public hn1(vo1 vo1Var, String str, gx5[] gx5VarArr) {
        super(vo1Var);
        this.g = str;
        this.h = gx5VarArr;
    }

    public hn1() {
    }
}
