package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dv3 implements Iterator, bo4 {
    public Object a;
    public int b = -2;
    public final /* synthetic */ ev3 c;

    public dv3(ev3 ev3Var) {
        this.c = ev3Var;
    }

    public final void a() {
        Object objInvoke;
        int i = this.b;
        ev3 ev3Var = this.c;
        if (i == -2) {
            objInvoke = ev3Var.a.invoke();
        } else {
            mt3 mt3Var = ev3Var.b;
            Object obj = this.a;
            obj.getClass();
            objInvoke = mt3Var.invoke(obj);
        }
        this.a = objInvoke;
        this.b = objInvoke == null ? 0 : 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.b < 0) {
            a();
        }
        return this.b == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.b < 0) {
            a();
        }
        if (this.b == 0) {
            m0.d();
            return null;
        }
        Object obj = this.a;
        obj.getClass();
        this.b = -1;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
