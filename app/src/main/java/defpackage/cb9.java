package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cb9 extends ib9 {
    public final transient ib9 k;

    public cb9(ib9 ib9Var) {
        super(3);
        this.k = ib9Var;
    }

    @Override // defpackage.ib9, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.k.contains(obj);
    }

    @Override // java.util.List
    public final Object get(int i) {
        ib9 ib9Var = this.k;
        y13.N(i, ib9Var.size());
        return ib9Var.get((ib9Var.size() - 1) - i);
    }

    @Override // defpackage.ib9, java.util.List
    public final int indexOf(Object obj) {
        ib9 ib9Var = this.k;
        int iLastIndexOf = ib9Var.lastIndexOf(obj);
        if (iLastIndexOf >= 0) {
            return (ib9Var.size() - 1) - iLastIndexOf;
        }
        return -1;
    }

    @Override // defpackage.ib9, java.util.List
    public final int lastIndexOf(Object obj) {
        ib9 ib9Var = this.k;
        int iIndexOf = ib9Var.indexOf(obj);
        if (iIndexOf >= 0) {
            return (ib9Var.size() - 1) - iIndexOf;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.k.size();
    }

    @Override // defpackage.ib9
    public final ib9 x() {
        return this.k;
    }

    @Override // defpackage.ib9, java.util.List
    /* JADX INFO: renamed from: y */
    public final ib9 subList(int i, int i2) {
        ib9 ib9Var = this.k;
        y13.P(i, i2, ib9Var.size());
        return ib9Var.subList(ib9Var.size() - i2, ib9Var.size() - i).x();
    }
}
