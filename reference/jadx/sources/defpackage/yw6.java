package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yw6 extends ax6 implements Iterator {
    public xw6 a;
    public boolean b = true;
    public final /* synthetic */ bx6 c;

    public yw6(bx6 bx6Var) {
        this.c = bx6Var;
    }

    @Override // defpackage.ax6
    public final void a(xw6 xw6Var) {
        xw6 xw6Var2 = this.a;
        if (xw6Var == xw6Var2) {
            xw6 xw6Var3 = xw6Var2.d;
            this.a = xw6Var3;
            this.b = xw6Var3 == null;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.b) {
            return this.c.a != null;
        }
        xw6 xw6Var = this.a;
        return (xw6Var == null || xw6Var.c == null) ? false : true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.b) {
            this.b = false;
            this.a = this.c.a;
        } else {
            xw6 xw6Var = this.a;
            this.a = xw6Var != null ? xw6Var.c : null;
        }
        return this.a;
    }
}
