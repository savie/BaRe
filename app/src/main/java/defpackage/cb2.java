package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cb2 implements Iterator {
    public final /* synthetic */ int a = 0;
    public final Object b;

    public cb2(ql9 ql9Var) {
        this.b = ql9Var.a.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return ((Iterator) ((db2) obj).b).hasNext();
            default:
                return ((Iterator) obj).hasNext();
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                db2 db2Var = (db2) obj;
                hk5 hk5Var = (hk5) ((Iterator) db2Var.b).next();
                return new eb2(((eb2) db2Var.c).b.d(hk5Var.a.a), sb4.d(hk5Var.b));
            default:
                return (String) ((Iterator) obj).next();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException("remove called on immutable collection");
            default:
                throw new UnsupportedOperationException();
        }
    }

    public cb2(db2 db2Var) {
        this.b = db2Var;
    }
}
