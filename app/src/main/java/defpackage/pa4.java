package defpackage;

import java.util.AbstractMap;
import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.EmptyStackException;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pa4 implements Iterator {
    public final ArrayDeque a = new ArrayDeque();
    public final boolean b;

    public pa4(hp4 hp4Var, Comparator comparator, boolean z) {
        this.b = z;
        while (!hp4Var.isEmpty()) {
            this.a.push((jp4) hp4Var);
            hp4Var = z ? hp4Var.r() : hp4Var.b();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.a.size() > 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        ArrayDeque arrayDeque = this.a;
        try {
            jp4 jp4Var = (jp4) arrayDeque.pop();
            AbstractMap.SimpleEntry simpleEntry = new AbstractMap.SimpleEntry(jp4Var.a, jp4Var.b);
            if (this.b) {
                for (hp4 hp4VarR = jp4Var.c; !hp4VarR.isEmpty(); hp4VarR = hp4VarR.r()) {
                    arrayDeque.push((jp4) hp4VarR);
                }
            } else {
                for (hp4 hp4VarB = jp4Var.d; !hp4VarB.isEmpty(); hp4VarB = hp4VarB.b()) {
                    arrayDeque.push((jp4) hp4VarB);
                }
            }
            return simpleEntry;
        } catch (EmptyStackException unused) {
            m0.d();
            return null;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("remove called on immutable collection");
    }
}
