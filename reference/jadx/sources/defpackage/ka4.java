package defpackage;

import java.util.Iterator;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ka4 extends la4 {
    public final transient int k;
    public final transient int n;
    public final /* synthetic */ la4 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ka4(la4 la4Var, int i, int i2) {
        super(0);
        this.p = la4Var;
        this.k = i;
        this.n = i2;
    }

    @Override // defpackage.ga4
    public final Object[] d() {
        return this.p.d();
    }

    @Override // defpackage.ga4
    public final int e() {
        return this.p.f() + this.k + this.n;
    }

    @Override // defpackage.ga4
    public final int f() {
        return this.p.f() + this.k;
    }

    @Override // java.util.List
    public final Object get(int i) {
        sz8.f(i, this.n);
        return this.p.get(i + this.k);
    }

    @Override // defpackage.la4, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // defpackage.la4, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.n;
    }

    @Override // defpackage.la4, java.util.List
    /* JADX INFO: renamed from: y */
    public final la4 subList(int i, int i2) {
        sz8.i(i, i2, this.n);
        int i3 = this.k;
        return this.p.subList(i + i3, i2 + i3);
    }

    @Override // defpackage.la4, java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
        return listIterator(i);
    }
}
