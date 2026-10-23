package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class x97 extends fw0 {
    private pr5 f;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, x97> {
        private void B(pr5 pr5Var) {
            ki8.i(pr5Var, "object-lock configuration");
        }

        @Override // fw0.a
        /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
        public void u(x97 x97Var) {
            super.u(x97Var);
            B(x97Var.f);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a y(pr5 pr5Var) {
            B(pr5Var);
            this.a.add(new y00(pr5Var, 8));
            return this;
        }
    }

    public static /* synthetic */ pr5 i(x97 x97Var, pr5 pr5Var) {
        x97Var.f = pr5Var;
        return pr5Var;
    }

    public static a j() {
        return new a();
    }

    @Override // defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof x97) && super.equals(obj)) {
            return Objects.equals(this.f, ((x97) obj).f);
        }
        return false;
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f);
    }

    public pr5 k() {
        return this.f;
    }
}
