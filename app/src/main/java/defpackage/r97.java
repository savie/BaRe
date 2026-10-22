package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class r97 extends fw0 {
    private xo5 f;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, r97> {
        private void B(xo5 xo5Var) {
            ki8.i(xo5Var, "notification configuration");
        }

        @Override // fw0.a
        /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
        public void u(r97 r97Var) {
            super.u(r97Var);
            B(r97Var.f);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a y(xo5 xo5Var) {
            B(xo5Var);
            this.a.add(new nw1(xo5Var, 2));
            return this;
        }
    }

    public static /* synthetic */ xo5 i(r97 r97Var, xo5 xo5Var) {
        r97Var.f = xo5Var;
        return xo5Var;
    }

    public static a j() {
        return new a();
    }

    @Override // defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof r97) && super.equals(obj)) {
            return Objects.equals(this.f, ((r97) obj).f);
        }
        return false;
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f);
    }

    public xo5 k() {
        return this.f;
    }
}
