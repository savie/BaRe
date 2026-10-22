package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class y97 extends vr5 {
    private jn6 h;
    private boolean i;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends vr5.a<a, y97> {
        private void M(jn6 jn6Var) {
            ki8.i(jn6Var, "retention configuration");
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a H(boolean z) {
            this.a.add(new x02(2, z));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a I(jn6 jn6Var) {
            M(jn6Var);
            this.a.add(new a10(jn6Var, 8));
            return this;
        }

        @Override // yq5.a, fw0.a
        /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
        public void u(y97 y97Var) {
            super.u(y97Var);
            M(y97Var.h);
        }
    }

    public static /* synthetic */ jn6 k(y97 y97Var, jn6 jn6Var) {
        y97Var.h = jn6Var;
        return jn6Var;
    }

    public static /* synthetic */ boolean l(y97 y97Var, boolean z) {
        y97Var.i = z;
        return z;
    }

    public static a m() {
        return new a();
    }

    @Override // defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y97) || !super.equals(obj)) {
            return false;
        }
        y97 y97Var = (y97) obj;
        return this.i == y97Var.i && Objects.equals(this.h, y97Var.h);
    }

    @Override // defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.h, Boolean.valueOf(this.i));
    }

    public boolean n() {
        return this.i;
    }

    public jn6 o() {
        return this.h;
    }
}
