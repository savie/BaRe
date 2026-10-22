package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rn6 extends z3 {
    public final List a;

    public rn6(List list) {
        list.getClass();
        this.a = list;
    }

    @Override // defpackage.l3
    public final int d() {
        return this.a.size();
    }

    @Override // java.util.List
    public final Object get(int i) {
        return this.a.get(el1.I0(i, this));
    }

    @Override // defpackage.z3, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new qn6(this, 0);
    }

    @Override // defpackage.z3, java.util.List
    public final ListIterator listIterator() {
        return new qn6(this, 0);
    }

    @Override // defpackage.z3, java.util.List
    public final ListIterator listIterator(int i) {
        return new qn6(this, i);
    }
}
