package defpackage;

import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class uw3 extends vr5 {
    public static final int j = 604800;
    private v64.d h;
    private int i = j;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends vr5.a<a, uw3> {
        private void N(int i) {
            if (i < 1 || i > uw3.j) {
                c6.f(dj7.h(((long) uw3.j) / 86400, " days", new StringBuilder("expiry must be minimum 1 second to maximum ")));
            }
        }

        private void O(v64.d dVar) {
            ki8.i(dVar, "method");
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a H(int i) {
            N(i);
            this.a.add(new tw3(i, 0));
            return this;
        }

        public a I(int i, TimeUnit timeUnit) {
            return H((int) timeUnit.toSeconds(i));
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a L(v64.d dVar) {
            O(dVar);
            this.a.add(new c10(dVar, 1));
            return this;
        }

        @Override // yq5.a, fw0.a
        /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public void u(uw3 uw3Var) {
            super.u(uw3Var);
            O(uw3Var.h);
        }
    }

    public static /* synthetic */ v64.d k(uw3 uw3Var, v64.d dVar) {
        uw3Var.h = dVar;
        return dVar;
    }

    public static /* synthetic */ int l(uw3 uw3Var, int i) {
        uw3Var.i = i;
        return i;
    }

    public static a m() {
        return new a();
    }

    @Override // defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uw3) || !super.equals(obj)) {
            return false;
        }
        uw3 uw3Var = (uw3) obj;
        return this.i == uw3Var.i && this.h == uw3Var.h;
    }

    @Override // defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.h, Integer.valueOf(this.i));
    }

    public int n() {
        return this.i;
    }

    public v64.d o() {
        return this.h;
    }
}
