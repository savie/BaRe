package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class s97 extends fw0 {
    private String f;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, s97> {
        private void B(String str) {
            ki8.i(str, "policy configuration");
        }

        @Override // fw0.a
        /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
        public void u(s97 s97Var) {
            super.u(s97Var);
            B(s97Var.f);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a y(String str) {
            B(str);
            this.a.add(new vx4(str, 3));
            return this;
        }
    }

    public static /* synthetic */ String i(s97 s97Var, String str) {
        s97Var.f = str;
        return str;
    }

    public static a j() {
        return new a();
    }

    @Override // defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof s97) && super.equals(obj)) {
            return Objects.equals(this.f, ((s97) obj).f);
        }
        return false;
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f);
    }

    public String k() {
        return this.f;
    }
}
