package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zw6 extends ax6 implements Iterator {
    public xw6 a;
    public xw6 b;

    public zw6(xw6 xw6Var, xw6 xw6Var2) {
        this.a = xw6Var2;
        this.b = xw6Var;
    }

    @Override // defpackage.ax6
    public final void a(xw6 xw6Var) {
        xw6 xw6VarC = null;
        if (this.a == xw6Var && xw6Var == this.b) {
            this.b = null;
            this.a = null;
        }
        xw6 xw6Var2 = this.a;
        if (xw6Var2 == xw6Var) {
            this.a = b(xw6Var2);
        }
        xw6 xw6Var3 = this.b;
        if (xw6Var3 == xw6Var) {
            xw6 xw6Var4 = this.a;
            if (xw6Var3 != xw6Var4 && xw6Var4 != null) {
                xw6VarC = c(xw6Var3);
            }
            this.b = xw6VarC;
        }
    }

    public abstract xw6 b(xw6 xw6Var);

    public abstract xw6 c(xw6 xw6Var);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        xw6 xw6Var = this.b;
        xw6 xw6Var2 = this.a;
        this.b = (xw6Var == xw6Var2 || xw6Var2 == null) ? null : c(xw6Var);
        return xw6Var;
    }
}
