package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class om6 extends vr5 {
    private pm6 h;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends vr5.a<a, om6> {
        private void J(pm6 pm6Var) {
            ki8.i(pm6Var, "request");
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a H(pm6 pm6Var) {
            J(pm6Var);
            this.a.add(new uo1(pm6Var, 4));
            return this;
        }

        @Override // yq5.a, fw0.a
        /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
        public void u(om6 om6Var) {
            super.u(om6Var);
            J(om6Var.l());
        }
    }

    public static /* synthetic */ pm6 j(om6 om6Var, pm6 pm6Var) {
        om6Var.h = pm6Var;
        return pm6Var;
    }

    public static a k() {
        return new a();
    }

    @Override // defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof om6) && super.equals(obj)) {
            return Objects.equals(this.h, ((om6) obj).h);
        }
        return false;
    }

    @Override // defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.h);
    }

    public pm6 l() {
        return this.h;
    }
}
