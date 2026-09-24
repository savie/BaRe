package defpackage;

import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class mw3 extends rr5 {
    private List<String> i;
    private Integer j;
    private Integer k;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends rr5.a<a, mw3> {
        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void N(String[] strArr, mw3 mw3Var) {
            mw3Var.i = strArr == null ? null : Arrays.asList(strArr);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a Q(Integer num) {
            this.a.add(new a10(num, 3));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a R(List<String> list) {
            this.a.add(new kl0(list, 2));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a S(String[] strArr) {
            this.a.add(new sh2(strArr, 1));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a T(Integer num) {
            this.a.add(new y00(num, 2));
            return this;
        }

        @Override // yq5.a, fw0.a
        /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
        public void u(mw3 mw3Var) {
            super.u(mw3Var);
            ki8.i(mw3Var.i, "object attributes");
        }
    }

    public static /* synthetic */ List m(mw3 mw3Var, List list) {
        mw3Var.i = list;
        return list;
    }

    public static /* synthetic */ Integer n(mw3 mw3Var, Integer num) {
        mw3Var.k = num;
        return num;
    }

    public static /* synthetic */ Integer o(mw3 mw3Var, Integer num) {
        mw3Var.j = num;
        return num;
    }

    public static a p() {
        return new a();
    }

    @Override // defpackage.rr5, defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mw3) || !super.equals(obj)) {
            return false;
        }
        mw3 mw3Var = (mw3) obj;
        return Objects.equals(this.i, mw3Var.i) && Objects.equals(this.j, mw3Var.j) && Objects.equals(this.k, mw3Var.k);
    }

    @Override // defpackage.rr5, defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.i, this.j, this.k);
    }

    public Integer q() {
        return this.j;
    }

    public List<String> r() {
        return this.i;
    }

    public Integer s() {
        return this.k;
    }
}
