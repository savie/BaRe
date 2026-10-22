package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class rr5 extends vr5 {
    protected g87.a h;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static abstract class a<B extends a<B, A>, A extends rr5> extends vr5.a<B, A> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B H(g87.a aVar) {
            this.a.add(new y00(aVar, 3));
            return this;
        }
    }

    public rr5(rr5 rr5Var) {
        super(rr5Var);
        this.h = rr5Var.h;
    }

    @Override // defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof rr5) && super.equals(obj)) {
            return Objects.equals(this.h, ((rr5) obj).h);
        }
        return false;
    }

    @Override // defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.h);
    }

    public g87.a j() {
        return this.h;
    }

    public void k(boolean z) {
        a(this.h, z);
    }

    public rr5() {
    }

    public rr5(d10 d10Var) {
        super(d10Var);
    }
}
