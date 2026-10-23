package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n5 implements Iterator {
    public final Iterator a;
    public Map.Entry b;
    public Object c;

    public n5(sp7 sp7Var, Iterator it) {
        this.a = it;
        a();
    }

    public final void a() {
        T t;
        do {
            Iterator it = this.a;
            if (!it.hasNext()) {
                this.b = null;
                this.c = null;
                return;
            } else {
                Map.Entry entry = (Map.Entry) it.next();
                this.b = entry;
                t = ((p5) entry.getKey()).get();
                this.c = t;
            }
        } while (t == 0);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object obj = this.c;
        if (obj == null) {
            m0.d();
            return null;
        }
        try {
            return new o5(obj, this.b);
        } finally {
            a();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
