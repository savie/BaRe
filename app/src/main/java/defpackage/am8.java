package defpackage;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class am8 extends ew1 {
    public bm8 a;
    public int b = 0;

    public am8() {
    }

    @Override // defpackage.ew1
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i) {
        x(coordinatorLayout, view, i);
        if (this.a == null) {
            this.a = new bm8(view);
        }
        bm8 bm8Var = this.a;
        View view2 = bm8Var.a;
        bm8Var.b = view2.getTop();
        bm8Var.c = view2.getLeft();
        this.a.a();
        int i2 = this.b;
        if (i2 == 0) {
            return true;
        }
        bm8 bm8Var2 = this.a;
        if (bm8Var2.d != i2) {
            bm8Var2.d = i2;
            bm8Var2.a();
        }
        this.b = 0;
        return true;
    }

    public final int w() {
        bm8 bm8Var = this.a;
        if (bm8Var != null) {
            return bm8Var.d;
        }
        return 0;
    }

    public void x(CoordinatorLayout coordinatorLayout, View view, int i) {
        coordinatorLayout.r(view, i);
    }

    public am8(int i) {
    }
}
