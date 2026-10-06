package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k59 extends y59 {
    public final transient y59 k;

    public k59(y59 y59Var) {
        super(1);
        this.k = y59Var;
    }

    @Override // defpackage.y59, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.k.contains(obj);
    }

    @Override // java.util.List
    public final Object get(int i) {
        y59 y59Var = this.k;
        xx3.F(i, y59Var.size());
        return y59Var.get((y59Var.size() - 1) - i);
    }

    @Override // defpackage.y59, java.util.List
    public final int indexOf(Object obj) {
        y59 y59Var = this.k;
        int iLastIndexOf = y59Var.lastIndexOf(obj);
        if (iLastIndexOf >= 0) {
            return (y59Var.size() - 1) - iLastIndexOf;
        }
        return -1;
    }

    @Override // defpackage.y59, java.util.List
    public final int lastIndexOf(Object obj) {
        y59 y59Var = this.k;
        int iIndexOf = y59Var.indexOf(obj);
        if (iIndexOf >= 0) {
            return (y59Var.size() - 1) - iIndexOf;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.k.size();
    }

    @Override // defpackage.y59
    public final y59 x() {
        return this.k;
    }

    @Override // defpackage.y59, java.util.List
    /* JADX INFO: renamed from: y */
    public final y59 subList(int i, int i2) {
        y59 y59Var = this.k;
        xx3.L(i, i2, y59Var.size());
        return y59Var.subList(y59Var.size() - i2, y59Var.size() - i).x();
    }
}
