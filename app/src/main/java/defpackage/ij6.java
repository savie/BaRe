package defpackage;

import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ij6 extends fw0 {
    private boolean f;
    private Iterable<vh2.a> g = new ArrayList();

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, ij6> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a C(Iterable<vh2.a> iterable) {
            ki8.i(iterable, "objects");
            this.a.add(new v02(iterable, 6));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a z(boolean z) {
            this.a.add(new qh2(2, z));
            return this;
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
        if (!(obj instanceof ij6) || !super.equals(obj)) {
            return false;
        }
        ij6 ij6Var = (ij6) obj;
        return this.f == ij6Var.f && Objects.equals(this.g, ij6Var.g);
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), Boolean.valueOf(this.f), this.g);
    }

    public boolean k() {
        return this.f;
    }

    public Iterable<vh2.a> l() {
        return this.g;
    }
}
