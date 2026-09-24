package defpackage;

import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ng6 {
    public ln5 a;
    public ArrayList b;
    public long c;
    public long d;
    public long e;
    public long f;

    public static void b(fh6 fh6Var) {
        RecyclerView recyclerView;
        int i = fh6Var.j;
        if (fh6Var.g() || (i & 4) != 0 || (recyclerView = fh6Var.r) == null) {
            return;
        }
        recyclerView.I(fh6Var);
    }

    public abstract boolean a(fh6 fh6Var, fh6 fh6Var2, mg6 mg6Var, mg6 mg6Var2);

    /* JADX WARN: Code duplicated, block: B:33:0x006c  */
    /* JADX WARN: Code duplicated, block: B:35:0x007a  */
    /* JADX WARN: Instruction removed from duplicated block: B:35:0x007a, please report this as an issue */
    public final void c(fh6 fh6Var) {
        ln5 ln5Var = this.a;
        if (ln5Var != null) {
            RecyclerView recyclerView = (RecyclerView) ln5Var.b;
            boolean z = true;
            fh6Var.o(true);
            View view = fh6Var.a;
            if (fh6Var.h != null && fh6Var.i == null) {
                fh6Var.h = null;
            }
            fh6Var.i = null;
            if ((fh6Var.j & 16) != 0) {
                return;
            }
            vg6 vg6Var = recyclerView.c;
            recyclerView.j0();
            j61 j61Var = recyclerView.f;
            i61 i61Var = j61Var.b;
            om5 om5Var = j61Var.a;
            int i = j61Var.d;
            if (i != 1) {
                if (i == 2) {
                    l0.e("Cannot call removeViewIfHidden within removeViewIfHidden");
                    return;
                }
                try {
                    j61Var.d = 2;
                    int iIndexOfChild = ((RecyclerView) om5Var.a).indexOfChild(view);
                    if (iIndexOfChild == -1) {
                        j61Var.k(view);
                    } else if (i61Var.d(iIndexOfChild)) {
                        i61Var.f(iIndexOfChild);
                        j61Var.k(view);
                        om5Var.l(iIndexOfChild);
                    } else {
                        j61Var.d = 0;
                    }
                    j61Var.d = 0;
                    if (z) {
                        fh6 fh6VarL = RecyclerView.L(view);
                        vg6Var.m(fh6VarL);
                        vg6Var.j(fh6VarL);
                        if (RecyclerView.T0) {
                            Log.d("RecyclerView", "after removing animated view: " + view + ", " + recyclerView);
                        }
                    }
                    recyclerView.l0(!z);
                    if (z && fh6Var.k()) {
                        recyclerView.removeDetachedView(view, false);
                        return;
                    }
                } catch (Throwable th) {
                    j61Var.d = 0;
                    throw th;
                }
            }
            if (j61Var.e != view) {
                l0.e("Cannot call removeViewIfHidden within removeView(At) for a different view");
                return;
            }
            z = false;
            if (z) {
                fh6 fh6VarL2 = RecyclerView.L(view);
                vg6Var.m(fh6VarL2);
                vg6Var.j(fh6VarL2);
                if (RecyclerView.T0) {
                    Log.d("RecyclerView", "after removing animated view: " + view + ", " + recyclerView);
                }
            }
            recyclerView.l0(!z);
            if (z) {
            }
        }
    }

    public abstract void d(fh6 fh6Var);

    public abstract void e();

    public abstract boolean f();
}
