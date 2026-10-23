package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class t67 extends rr5 {
    private String i;
    private oc4 j;
    private gv5 k;
    private Boolean l;
    private Long m;
    private Long n;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends rr5.a<a, t67> {
        private void b0(oc4 oc4Var) {
            ki8.i(oc4Var, "inputSerialization");
        }

        private void c0(gv5 gv5Var) {
            ki8.i(gv5Var, "outputSerialization");
        }

        private void d0(String str) {
            ki8.h(str, "sqlExpression");
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a O(oc4 oc4Var) {
            b0(oc4Var);
            this.a.add(new y00(oc4Var, 7));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a V(gv5 gv5Var) {
            c0(gv5Var);
            this.a.add(new uo1(gv5Var, 5));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a W(Boolean bool) {
            this.a.add(new v02(bool, 7));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a X(Long l) {
            this.a.add(new en1(l, 4));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a Y(Long l) {
            this.a.add(new fn1(l, 5));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a Z(String str) {
            d0(str);
            this.a.add(new dw0(str, 4));
            return this;
        }

        @Override // yq5.a, fw0.a
        /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public void u(t67 t67Var) {
            super.u(t67Var);
            d0(t67Var.x());
            b0(t67Var.s());
            c0(t67Var.t());
        }
    }

    public static /* synthetic */ Long l(t67 t67Var, Long l) {
        t67Var.n = l;
        return l;
    }

    public static /* synthetic */ Long m(t67 t67Var, Long l) {
        t67Var.m = l;
        return l;
    }

    public static /* synthetic */ Boolean n(t67 t67Var, Boolean bool) {
        t67Var.l = bool;
        return bool;
    }

    public static /* synthetic */ gv5 o(t67 t67Var, gv5 gv5Var) {
        t67Var.k = gv5Var;
        return gv5Var;
    }

    public static /* synthetic */ oc4 p(t67 t67Var, oc4 oc4Var) {
        t67Var.j = oc4Var;
        return oc4Var;
    }

    public static /* synthetic */ String q(t67 t67Var, String str) {
        t67Var.i = str;
        return str;
    }

    public static a r() {
        return new a();
    }

    @Override // defpackage.rr5, defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t67) || !super.equals(obj)) {
            return false;
        }
        t67 t67Var = (t67) obj;
        return Objects.equals(this.i, t67Var.i) && Objects.equals(this.j, t67Var.j) && Objects.equals(this.k, t67Var.k) && Objects.equals(this.l, t67Var.l) && Objects.equals(this.m, t67Var.m) && Objects.equals(this.n, t67Var.n);
    }

    @Override // defpackage.rr5, defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.i, this.j, this.k, this.l, this.m, this.n);
    }

    public oc4 s() {
        return this.j;
    }

    public gv5 t() {
        return this.k;
    }

    public Boolean u() {
        return this.l;
    }

    public Long v() {
        return this.n;
    }

    public Long w() {
        return this.m;
    }

    public String x() {
        return this.i;
    }
}
