package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e4 implements Iterator {
    public final /* synthetic */ int a = 1;
    public final Iterator b;
    public Object c;
    public final /* synthetic */ Object d;

    public e4(b76 b76Var) {
        this.d = b76Var;
        this.b = b76Var.a.values().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.a) {
            case 0:
                break;
        }
        return this.b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.a;
        Iterator it = this.b;
        switch (i) {
            case 0:
                Map.Entry entry = (Map.Entry) it.next();
                this.c = entry;
                return entry.getKey();
            default:
                this.c = (u66) it.next();
                return new a76((b76) this.d, (u66) this.c);
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i = this.a;
        Object obj = this.d;
        switch (i) {
            case 0:
                sz8.j("no calls to next() since the last call to remove()", ((Map.Entry) this.c) != null);
                Collection collection = (Collection) ((Map.Entry) this.c).getValue();
                this.b.remove();
                ((f4) obj).b.e -= collection.size();
                collection.clear();
                this.c = null;
                break;
            default:
                u66 u66Var = (u66) this.c;
                boolean z = u66Var != null;
                int i2 = b76.G;
                if (!z) {
                    g84.c();
                } else {
                    ((b76) obj).remove(u66Var.a);
                    this.c = null;
                }
                break;
        }
    }

    public e4(f4 f4Var, Iterator it) {
        this.b = it;
        this.d = f4Var;
    }
}
