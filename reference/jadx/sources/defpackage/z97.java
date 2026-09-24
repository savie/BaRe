package defpackage;

import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class z97 extends vr5 {
    private jx7 h;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends vr5.a<a, z97> {
        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void H(Map map, z97 z97Var) {
            z97Var.h = jx7.c(map);
        }

        private void M(jx7 jx7Var) {
            ki8.i(jx7Var, "tags");
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a J(jx7 jx7Var) {
            M(jx7Var);
            this.a.add(new b10(jx7Var, 4));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a K(Map<String, String> map) {
            ki8.i(map, "map for tags");
            this.a.add(new o86(1, map));
            return this;
        }

        @Override // yq5.a, fw0.a
        /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
        public void u(z97 z97Var) {
            super.u(z97Var);
            M(z97Var.h);
        }
    }

    public static /* synthetic */ jx7 k(z97 z97Var, jx7 jx7Var) {
        z97Var.h = jx7Var;
        return jx7Var;
    }

    public static a l() {
        return new a();
    }

    @Override // defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof z97) && super.equals(obj)) {
            return Objects.equals(this.h, ((z97) obj).h);
        }
        return false;
    }

    @Override // defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.h);
    }

    public jx7 m() {
        return this.h;
    }
}
