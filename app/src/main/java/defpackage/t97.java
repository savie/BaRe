package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class t97 extends fw0 {
    private qj6 f;
    private String g;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, t97> {
        private void E(qj6 qj6Var) {
            ki8.i(qj6Var, "replication configuration");
        }

        private void F(String str) {
            ki8.j(str, "object lock token");
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a C(String str) {
            F(str);
            this.a.add(new lo2(str, 4));
            return this;
        }

        @Override // fw0.a
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
        public void u(t97 t97Var) {
            super.u(t97Var);
            E(t97Var.f);
            F(t97Var.g);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a z(qj6 qj6Var) {
            E(qj6Var);
            this.a.add(new en1(qj6Var, 5));
            return this;
        }
    }

    public static a l() {
        return new a();
    }

    @Override // defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t97) || !super.equals(obj)) {
            return false;
        }
        t97 t97Var = (t97) obj;
        return Objects.equals(this.f, t97Var.f) && Objects.equals(this.g, t97Var.g);
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f, this.g);
    }

    public qj6 m() {
        return this.f;
    }

    public String n() {
        return this.g;
    }
}
