package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class p97 extends fw0 {
    private qk7 f;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, p97> {
        private void B(qk7 qk7Var) {
            ki8.i(qk7Var, "encryption configuration");
        }

        @Override // fw0.a
        /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
        public void u(p97 p97Var) {
            super.u(p97Var);
            B(p97Var.f);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a y(qk7 qk7Var) {
            B(qk7Var);
            this.a.add(new c10(qk7Var, 3));
            return this;
        }
    }

    public static /* synthetic */ qk7 i(p97 p97Var, qk7 qk7Var) {
        p97Var.f = qk7Var;
        return qk7Var;
    }

    public static a j() {
        return new a();
    }

    @Override // defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof p97) && super.equals(obj)) {
            return Objects.equals(this.f, ((p97) obj).f);
        }
        return false;
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f);
    }

    public qk7 k() {
        return this.f;
    }
}
