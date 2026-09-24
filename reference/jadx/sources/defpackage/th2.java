package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class th2 extends fw0 {
    private boolean f;
    private boolean g;
    private List<vh2.a> h = new ArrayList();

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, th2> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a A(boolean z) {
            this.a.add(new qh2(0, z));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a E(List<vh2.a> list) {
            ki8.i(list, "objects");
            if (list.size() <= 1000) {
                this.a.add(new sh2(list, 0));
                return this;
            }
            c6.f("list of objects must not be more than 1000");
            return null;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a F(boolean z) {
            this.a.add(new rh2(0, z));
            return this;
        }

        @Override // fw0.a
        /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
        public void u(th2 th2Var) {
            super.u(th2Var);
            ki8.i(th2Var.h, "objects");
            if (th2Var.h.size() <= 1000) {
                return;
            }
            c6.f("list of objects must not be more than 1000");
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
        if (!(obj instanceof th2) || !super.equals(obj)) {
            return false;
        }
        th2 th2Var = (th2) obj;
        return this.f == th2Var.f && this.g == th2Var.g && Objects.equals(this.h, th2Var.h);
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), Boolean.valueOf(this.f), Boolean.valueOf(this.g), this.h);
    }

    public boolean m() {
        return this.g;
    }

    public List<vh2.a> n() {
        return this.h;
    }

    public boolean o() {
        return this.f;
    }
}
