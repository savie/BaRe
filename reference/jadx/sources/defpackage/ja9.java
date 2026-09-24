package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ja9 extends ma9 {
    public final transient int c;
    public final transient int d;
    public final /* synthetic */ ma9 e;

    public ja9(ma9 ma9Var, int i, int i2) {
        this.e = ma9Var;
        this.c = i;
        this.d = i2;
    }

    @Override // defpackage.ea9
    public final int d() {
        return this.e.e() + this.c + this.d;
    }

    @Override // defpackage.ea9
    public final int e() {
        return this.e.e() + this.c;
    }

    @Override // defpackage.ea9
    public final boolean g() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        w13.x(i, this.d);
        return this.e.get(i + this.c);
    }

    @Override // defpackage.ea9
    public final Object[] i() {
        return this.e.i();
    }

    @Override // defpackage.ma9, java.util.List
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public final ma9 subList(int i, int i2) {
        w13.z(i, i2, this.d);
        int i3 = this.c;
        return this.e.subList(i + i3, i2 + i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }
}
