package defpackage;

import android.view.View;
import android.widget.ProgressBar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class oo3 implements jk8 {
    public final CoordinatorLayout a;
    public final ExtendedFloatingActionButton b;
    public final ey2 c;
    public final ProgressBar d;
    public final RecyclerView e;
    public final tf2 f;

    public oo3(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, ey2 ey2Var, ProgressBar progressBar, RecyclerView recyclerView, tf2 tf2Var) {
        this.a = coordinatorLayout;
        this.b = extendedFloatingActionButton;
        this.c = ey2Var;
        this.d = progressBar;
        this.e = recyclerView;
        this.f = tf2Var;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
