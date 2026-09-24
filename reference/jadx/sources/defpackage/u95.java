package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u95 extends gj5 {
    public final bx6 l = new bx6();

    @Override // defpackage.zy4
    public final void g() {
        Iterator it = this.l.iterator();
        while (true) {
            zw6 zw6Var = (zw6) it;
            if (!zw6Var.hasNext()) {
                return;
            }
            t95 t95Var = (t95) ((Map.Entry) zw6Var.next()).getValue();
            t95Var.a.f(t95Var);
        }
    }

    @Override // defpackage.zy4
    public final void h() {
        Iterator it = this.l.iterator();
        while (true) {
            zw6 zw6Var = (zw6) it;
            if (!zw6Var.hasNext()) {
                return;
            }
            t95 t95Var = (t95) ((Map.Entry) zw6Var.next()).getValue();
            t95Var.a.j(t95Var);
        }
    }

    public final void l(ex6 ex6Var, es5 es5Var) {
        Object obj;
        if (ex6Var == null) {
            f6.n("source cannot be null");
            return;
        }
        t95 t95Var = new t95(ex6Var, es5Var);
        bx6 bx6Var = this.l;
        xw6 xw6VarC = bx6Var.c(ex6Var);
        if (xw6VarC != null) {
            obj = xw6VarC.b;
        } else {
            xw6 xw6Var = new xw6(ex6Var, t95Var);
            bx6Var.d++;
            xw6 xw6Var2 = bx6Var.b;
            if (xw6Var2 == null) {
                bx6Var.a = xw6Var;
                bx6Var.b = xw6Var;
            } else {
                xw6Var2.c = xw6Var;
                xw6Var.d = xw6Var2;
                bx6Var.b = xw6Var;
            }
            obj = null;
        }
        t95 t95Var2 = (t95) obj;
        if (t95Var2 != null && t95Var2.b != es5Var) {
            c6.f("This source was already added with the different observer");
        } else if (t95Var2 == null && this.c > 0) {
            ex6Var.f(t95Var);
        }
    }
}
