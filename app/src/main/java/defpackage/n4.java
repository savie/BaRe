package defpackage;

import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n4 extends l4 implements ListIterator {
    public final /* synthetic */ o4 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n4(o4 o4Var, int i) {
        super(o4Var, ((List) o4Var.b).listIterator(i));
        this.d = o4Var;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        o4 o4Var = this.d;
        boolean zIsEmpty = o4Var.isEmpty();
        b().add(obj);
        o4Var.f.e++;
        if (zIsEmpty) {
            o4Var.c();
        }
    }

    public final ListIterator b() {
        a();
        return (ListIterator) this.a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return b().hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return b().nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return b().previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return b().previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        b().set(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n4(o4 o4Var) {
        super(o4Var);
        this.d = o4Var;
    }
}
