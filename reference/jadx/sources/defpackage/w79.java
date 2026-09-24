package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w79 extends z59 {
    public final transient int k;
    public final transient int n;
    public final /* synthetic */ z59 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w79(z59 z59Var, int i, int i2) {
        super(2);
        this.p = z59Var;
        this.k = i;
        this.n = i2;
    }

    @Override // defpackage.ga4
    public final int g() {
        return this.p.k() + this.k + this.n;
    }

    @Override // java.util.List
    public final Object get(int i) {
        pe4.L(i, this.n);
        return this.p.get(i + this.k);
    }

    @Override // defpackage.ga4
    public final int k() {
        return this.p.k() + this.k;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.n;
    }

    @Override // defpackage.ga4
    public final Object[] t() {
        return this.p.t();
    }

    @Override // defpackage.z59, java.util.List
    /* JADX INFO: renamed from: x */
    public final z59 subList(int i, int i2) {
        pe4.M(i, i2, this.n);
        int i3 = this.k;
        return (z59) this.p.subList(i + i3, i2 + i3);
    }
}
