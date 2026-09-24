package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import defpackage.ew1;
import defpackage.i03;
import defpackage.j03;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class ExpandableBehavior extends ew1 {
    public int a = 0;

    public ExpandableBehavior() {
    }

    @Override // defpackage.ew1
    public abstract boolean f(View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ew1
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
        Object obj = (j03) view2;
        boolean z = ((FloatingActionButton) obj).G.b;
        int i = this.a;
        if (z) {
            if (i != 0 && i != 2) {
                return false;
            }
        } else if (i != 1) {
            return false;
        }
        boolean z2 = ((FloatingActionButton) obj).G.b;
        this.a = z2 ? 1 : 2;
        w((View) obj, view, z2, true);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ew1
    public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i) {
        j03 j03Var;
        if (!view.isLaidOut()) {
            ArrayList arrayListK = coordinatorLayout.k(view);
            int size = arrayListK.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    j03Var = null;
                    break;
                }
                View view2 = (View) arrayListK.get(i2);
                if (f(view, view2)) {
                    j03Var = (j03) view2;
                    break;
                }
                i2++;
            }
            if (j03Var != null) {
                boolean z = ((FloatingActionButton) j03Var).G.b;
                int i3 = this.a;
                if (!z ? i3 == 1 : !(i3 != 0 && i3 != 2)) {
                    int i4 = z ? 1 : 2;
                    this.a = i4;
                    view.getViewTreeObserver().addOnPreDrawListener(new i03(this, view, i4, j03Var));
                }
            }
        }
        return false;
    }

    public abstract void w(View view, View view2, boolean z, boolean z2);

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
    }
}
