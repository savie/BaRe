package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class vr5 extends yq5 {
    protected String g;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static abstract class a<B extends a<B, A>, A extends vr5> extends yq5.a<B, A> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B E(String str) {
            this.a.add(new qw4(str, 4));
            return this;
        }
    }

    public vr5(vr5 vr5Var) {
        super(vr5Var);
        this.g = vr5Var.g;
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof vr5) && super.equals(obj)) {
            return Objects.equals(this.g, ((vr5) obj).g);
        }
        return false;
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.g);
    }

    public String i() {
        return this.g;
    }

    public vr5() {
    }

    public vr5(d10 d10Var) {
        super(d10Var);
    }
}
