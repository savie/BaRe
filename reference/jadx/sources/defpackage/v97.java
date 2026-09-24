package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class v97 extends fw0 {
    private ck8 f;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, v97> {
        private void B(ck8 ck8Var) {
            ki8.i(ck8Var, "versioning configuration");
        }

        @Override // fw0.a
        /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
        public void u(v97 v97Var) {
            super.u(v97Var);
            B(v97Var.f);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a y(ck8 ck8Var) {
            B(ck8Var);
            this.a.add(new sh2(ck8Var, 6));
            return this;
        }
    }

    public static /* synthetic */ ck8 i(v97 v97Var, ck8 ck8Var) {
        v97Var.f = ck8Var;
        return ck8Var;
    }

    public static a j() {
        return new a();
    }

    @Override // defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof v97) && super.equals(obj)) {
            return Objects.equals(this.f, ((v97) obj).f);
        }
        return false;
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f);
    }

    public ck8 k() {
        return this.f;
    }
}
