package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t59 extends y59 {
    public final transient int k;
    public final transient int n;
    public final /* synthetic */ y59 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t59(y59 y59Var, int i, int i2) {
        super(1);
        this.p = y59Var;
        this.k = i;
        this.n = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        xx3.F(i, this.n);
        return this.p.get(i + this.k);
    }

    @Override // defpackage.ga4
    public final Object[] l() {
        return this.p.l();
    }

    @Override // defpackage.ga4
    public final int o() {
        return this.p.o() + this.k;
    }

    @Override // defpackage.ga4
    public final int p() {
        return this.p.o() + this.k + this.n;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.n;
    }

    @Override // defpackage.y59, java.util.List
    /* JADX INFO: renamed from: y */
    public final y59 subList(int i, int i2) {
        xx3.L(i, i2, this.n);
        int i3 = this.k;
        return this.p.subList(i + i3, i2 + i3);
    }
}
