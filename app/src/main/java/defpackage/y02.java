package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class y02 extends fw0 {
    protected boolean f;
    protected z02.b g;
    protected z02.a h;
    protected jx7 i;
    protected boolean j;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static abstract class a<B extends a<B, A>, A extends y02> extends fw0.a<B, A> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B D(z02.a aVar) {
            this.a.add(new a10(aVar, 2));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B E(boolean z) {
            this.a.add(new w02(0, z));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B L(z02.b bVar) {
            this.a.add(new v02(bVar, 0));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B M(String str) {
            this.a.add(new dw0(str, 1));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B N(boolean z) {
            this.a.add(new x02(0, z));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B O(jx7 jx7Var) {
            this.a.add(new uo1(jx7Var, 1));
            return this;
        }
    }

    public y02(y02 y02Var) {
        super(y02Var);
        this.f = y02Var.f;
        this.g = y02Var.g;
        this.h = y02Var.h;
        this.i = y02Var.i;
        this.j = y02Var.j;
    }

    @Override // defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y02) || !super.equals(obj)) {
            return false;
        }
        y02 y02Var = (y02) obj;
        return this.f == y02Var.f && Objects.equals(this.g, y02Var.g) && Objects.equals(this.h, y02Var.h) && Objects.equals(this.i, y02Var.i) && this.j == y02Var.j;
    }

    public z02.a h() {
        return this.h;
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), Boolean.valueOf(this.f), this.g, this.h, this.i, Boolean.valueOf(this.j));
    }

    public boolean i() {
        return this.j;
    }

    public z02.b j() {
        return this.g;
    }

    public boolean k() {
        return this.f;
    }

    public jx7 l() {
        return this.i;
    }

    public y02() {
    }
}
