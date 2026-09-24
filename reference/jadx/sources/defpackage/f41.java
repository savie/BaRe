package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f41 implements jk8 {
    public Object a;
    public Object b;
    public Object c;
    public Object d;

    public f41(cv3 cv3Var) {
        this.a = cv3Var;
    }

    public static void a(f41 f41Var, rs5 rs5Var) {
        f41Var.getClass();
        if (((LinkedHashSet) f41Var.c).add(rs5Var)) {
            sl5 sl5Var = (sl5) f41Var.b;
            sl5Var.getClass();
            if (rs5Var.e != null) {
                c6.d(rs5Var, "' is already registered with a dispatcher", "Handler '");
                return;
            }
            sl5Var.e.addFirst(rs5Var);
            rs5Var.e = f41Var;
            sl5Var.b();
        }
    }

    public void b(rl5 rl5Var) {
        if (((LinkedHashSet) this.d).add(rl5Var)) {
            ((sl5) this.b).a(this, rl5Var, -1);
        }
    }

    public void c(ps5 ps5Var, int i) {
        if (i != 1 && i != 0) {
            f6.g(fz5.j(i, "Unsupported priority value: "));
        } else if (((LinkedHashSet) this.d).add(ps5Var)) {
            ((sl5) this.b).a(this, ps5Var, i);
        }
    }

    public void d(rl5 rl5Var, pl5 pl5Var) {
        sl5 sl5Var = (sl5) this.b;
        sl5Var.getClass();
        if (sl5Var.g != 0) {
            return;
        }
        rs5 rs5VarC = sl5Var.c(-1);
        sl5Var.f = rs5VarC;
        sl5Var.g = -1;
        sl5Var.h = rl5Var;
        if (pl5Var != null) {
            if (rs5VarC != null) {
                rs5VarC.f.handleOnBackStarted(new xj0(pl5Var));
            }
            km7 km7Var = sl5Var.a;
            ul5 ul5Var = new ul5(pl5Var);
            km7Var.getClass();
            km7Var.e(null, ul5Var);
        }
    }

    public void e(s65 s65Var, k36 k36Var, String str) {
        k36 k36Var2 = (k36) this.a;
        if (k36Var2 != null) {
            l0.i("Conflicting property-based creators: already had %s creator %s, encountered another: %s", new Object[]{str, k36Var2.a, k36Var.a});
        } else {
            k36Var.b(s65Var);
            this.a = k36Var;
        }
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (LinearLayout) this.a;
    }
}
