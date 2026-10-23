package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yh7 implements Iterator {
    public int a = -1;
    public boolean b;
    public Iterator c;
    public final /* synthetic */ wh7 d;

    public yh7(wh7 wh7Var) {
        this.d = wh7Var;
    }

    public final Iterator a() {
        if (this.c == null) {
            this.c = this.d.b.entrySet().iterator();
        }
        return this.c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.a + 1;
        wh7 wh7Var = this.d;
        return i < wh7Var.a.size() || (!wh7Var.b.isEmpty() && a().hasNext());
    }

    @Override // java.util.Iterator
    public final Object next() {
        this.b = true;
        int i = this.a + 1;
        this.a = i;
        wh7 wh7Var = this.d;
        return i < wh7Var.a.size() ? (Map.Entry) wh7Var.a.get(this.a) : (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.b) {
            l0.e("remove() was called before next()");
            return;
        }
        this.b = false;
        int i = wh7.f;
        wh7 wh7Var = this.d;
        wh7Var.b();
        if (this.a >= wh7Var.a.size()) {
            a().remove();
            return;
        }
        int i2 = this.a;
        this.a = i2 - 1;
        wh7Var.i(i2);
    }
}
