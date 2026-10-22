package defpackage;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j61 {
    public final om5 a;
    public View e;
    public int d = 0;
    public final i61 b = new i61();
    public final ArrayList c = new ArrayList();

    public j61(om5 om5Var) {
        this.a = om5Var;
    }

    public final void a(View view, int i, boolean z) {
        RecyclerView recyclerView = (RecyclerView) this.a.a;
        int childCount = i < 0 ? recyclerView.getChildCount() : f(i);
        this.b.e(childCount, z);
        if (z) {
            i(view);
        }
        recyclerView.addView(view, childCount);
        RecyclerView.L(view);
    }

    public final void b(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        RecyclerView recyclerView = (RecyclerView) this.a.a;
        int childCount = i < 0 ? recyclerView.getChildCount() : f(i);
        this.b.e(childCount, z);
        if (z) {
            i(view);
        }
        fh6 fh6VarL = RecyclerView.L(view);
        if (fh6VarL != null) {
            if (!fh6VarL.k() && !fh6VarL.p()) {
                StringBuilder sb = new StringBuilder("Called attach on a child which is not detached: ");
                sb.append(fh6VarL);
                m0.i(sb, recyclerView.A());
                return;
            } else {
                if (RecyclerView.T0) {
                    Log.d("RecyclerView", "reAttach " + fh6VarL);
                }
                fh6VarL.j &= -257;
            }
        } else if (RecyclerView.S0) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            String strA = recyclerView.A();
            sb2.append(", index: ");
            sb2.append(childCount);
            sb2.append(strA);
            throw new IllegalArgumentException(sb2.toString());
        }
        recyclerView.attachViewToParent(view, childCount, layoutParams);
    }

    public final void c(int i) {
        int iF = f(i);
        this.b.f(iF);
        RecyclerView recyclerView = (RecyclerView) this.a.a;
        View childAt = recyclerView.getChildAt(iF);
        if (childAt != null) {
            fh6 fh6VarL = RecyclerView.L(childAt);
            if (fh6VarL != null) {
                if (fh6VarL.k() && !fh6VarL.p()) {
                    StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                    sb.append(fh6VarL);
                    m0.i(sb, recyclerView.A());
                    return;
                } else {
                    if (RecyclerView.T0) {
                        Log.d("RecyclerView", "tmpDetach " + fh6VarL);
                    }
                    fh6VarL.a(256);
                }
            }
        } else if (RecyclerView.S0) {
            d6.h("No view at offset ", iF, recyclerView.A());
            return;
        }
        recyclerView.detachViewFromParent(iF);
    }

    public final View d(int i) {
        return ((RecyclerView) this.a.a).getChildAt(f(i));
    }

    public final int e() {
        return ((RecyclerView) this.a.a).getChildCount() - this.c.size();
    }

    public final int f(int i) {
        if (i < 0) {
            return -1;
        }
        int childCount = ((RecyclerView) this.a.a).getChildCount();
        int i2 = i;
        while (i2 < childCount) {
            i61 i61Var = this.b;
            int iB = i - (i2 - i61Var.b(i2));
            if (iB == 0) {
                while (i61Var.d(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += iB;
        }
        return -1;
    }

    public final View g(int i) {
        return ((RecyclerView) this.a.a).getChildAt(i);
    }

    public final int h() {
        return ((RecyclerView) this.a.a).getChildCount();
    }

    public final void i(View view) {
        this.c.add(view);
        fh6 fh6VarL = RecyclerView.L(view);
        if (fh6VarL != null) {
            View view2 = fh6VarL.a;
            RecyclerView recyclerView = (RecyclerView) this.a.a;
            int i = fh6VarL.q;
            if (i != -1) {
                fh6VarL.p = i;
            } else {
                fh6VarL.p = view2.getImportantForAccessibility();
            }
            if (!recyclerView.O()) {
                view2.setImportantForAccessibility(4);
            } else {
                fh6VarL.q = 4;
                recyclerView.K0.add(fh6VarL);
            }
        }
    }

    public final void j(int i) {
        om5 om5Var = this.a;
        int i2 = this.d;
        if (i2 == 1) {
            l0.e("Cannot call removeView(At) within removeView(At)");
            return;
        }
        if (i2 == 2) {
            l0.e("Cannot call removeView(At) within removeViewIfHidden");
            return;
        }
        try {
            int iF = f(i);
            View childAt = ((RecyclerView) om5Var.a).getChildAt(iF);
            if (childAt == null) {
                return;
            }
            this.d = 1;
            this.e = childAt;
            if (this.b.f(iF)) {
                k(childAt);
            }
            om5Var.l(iF);
        } finally {
            this.d = 0;
            this.e = null;
        }
    }

    public final void k(View view) {
        fh6 fh6VarL;
        if (!this.c.remove(view) || (fh6VarL = RecyclerView.L(view)) == null) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) this.a.a;
        int i = fh6VarL.p;
        if (recyclerView.O()) {
            fh6VarL.q = i;
            recyclerView.K0.add(fh6VarL);
        } else {
            fh6VarL.a.setImportantForAccessibility(i);
        }
        fh6VarL.p = 0;
    }

    public final String toString() {
        return this.b.toString() + ", hidden list:" + this.c.size();
    }
}
