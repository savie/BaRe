package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g77 implements Iterator, jv1, bo4 {
    public int a;
    public Object b;
    public Iterator c;
    public jv1 d;

    public final RuntimeException a() {
        int i = this.a;
        if (i == 4) {
            return new NoSuchElementException();
        }
        if (i == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.a);
    }

    public final void d(Object obj, an6 an6Var) {
        this.b = obj;
        this.a = 3;
        this.d = an6Var;
    }

    @Override // defpackage.jv1
    public final ox1 getContext() {
        return lv2.a;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i = this.a;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2 || i == 3) {
                        return true;
                    }
                    if (i == 4) {
                        return false;
                    }
                    throw a();
                }
                Iterator it = this.c;
                it.getClass();
                if (it.hasNext()) {
                    this.a = 2;
                    return true;
                }
                this.c = null;
            }
            this.a = 5;
            jv1 jv1Var = this.d;
            jv1Var.getClass();
            this.d = null;
            jv1Var.resumeWith(be8.a);
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.a;
        if (i == 0 || i == 1) {
            if (hasNext()) {
                return next();
            }
            m0.d();
            return null;
        }
        if (i == 2) {
            this.a = 1;
            Iterator it = this.c;
            it.getClass();
            return it.next();
        }
        if (i != 3) {
            throw a();
        }
        this.a = 0;
        Object obj = this.b;
        this.b = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // defpackage.jv1
    public final void resumeWith(Object obj) {
        lg7.H(obj);
        this.a = 4;
    }
}
