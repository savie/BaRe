package defpackage;

import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class u97 extends fw0 {
    private jx7 f;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, u97> {
        private void E(jx7 jx7Var) {
            ki8.i(jx7Var, "tags");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void z(Map map, u97 u97Var) {
            u97Var.f = jx7.b(map);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a B(jx7 jx7Var) {
            E(jx7Var);
            this.a.add(new v02(jx7Var, 8));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a C(Map<String, String> map) {
            ki8.i(map, "map for tags");
            this.a.add(new uo1(map, 6));
            return this;
        }

        @Override // fw0.a
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
        public void u(u97 u97Var) {
            super.u(u97Var);
            E(u97Var.f);
        }
    }

    public static a j() {
        return new a();
    }

    @Override // defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof u97) && super.equals(obj)) {
            return Objects.equals(this.f, ((u97) obj).f);
        }
        return false;
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f);
    }

    public jx7 k() {
        return this.f;
    }
}
