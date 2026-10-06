package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class l4 implements Iterator {
    public final Iterator a;
    public final Collection b;
    public final /* synthetic */ m4 c;

    public l4(m4 m4Var) {
        this.c = m4Var;
        Collection collection = m4Var.b;
        this.b = collection;
        this.a = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public final void a() {
        m4 m4Var = this.c;
        m4Var.d();
        if (m4Var.b == this.b) {
            return;
        }
        q.a();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        a();
        return this.a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        a();
        return this.a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.a.remove();
        m4 m4Var = this.c;
        m4Var.e.e--;
        m4Var.e();
    }

    public l4(o4 o4Var, ListIterator listIterator) {
        this.c = o4Var;
        this.b = o4Var.b;
        this.a = listIterator;
    }
}
