package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class q97 extends fw0 {
    private wt4 f;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, q97> {
        private void B(wt4 wt4Var) {
            ki8.i(wt4Var, "lifecycle configuration");
        }

        @Override // fw0.a
        /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
        public void u(q97 q97Var) {
            super.u(q97Var);
            B(q97Var.f);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a y(wt4 wt4Var) {
            B(wt4Var);
            this.a.add(new mw1(wt4Var, 3));
            return this;
        }
    }

    public static /* synthetic */ wt4 i(q97 q97Var, wt4 wt4Var) {
        q97Var.f = wt4Var;
        return wt4Var;
    }

    public static a j() {
        return new a();
    }

    @Override // defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof q97) && super.equals(obj)) {
            return Objects.equals(this.f, ((q97) obj).f);
        }
        return false;
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f);
    }

    public wt4 k() {
        return this.f;
    }
}
