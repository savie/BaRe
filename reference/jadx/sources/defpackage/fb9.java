package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fb9 extends ib9 {
    public final transient int k;
    public final transient int n;
    public final /* synthetic */ ib9 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fb9(ib9 ib9Var, int i, int i2) {
        super(3);
        this.p = ib9Var;
        this.k = i;
        this.n = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        y13.N(i, this.n);
        return this.p.get(i + this.k);
    }

    @Override // defpackage.ga4
    public final int k() {
        return this.p.o() + this.k + this.n;
    }

    @Override // defpackage.ga4
    public final int o() {
        return this.p.o() + this.k;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.n;
    }

    @Override // defpackage.ga4
    public final Object[] t() {
        return this.p.t();
    }

    @Override // defpackage.ib9, java.util.List
    /* JADX INFO: renamed from: y */
    public final ib9 subList(int i, int i2) {
        y13.P(i, i2, this.n);
        int i3 = this.k;
        return this.p.subList(i + i3, i2 + i3);
    }
}
