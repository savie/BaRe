package defpackage;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.l4digital.fastscroll.FastScroller;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class g20 implements jk8 {
    public final CoordinatorLayout a;
    public final x00 b;
    public final ExtendedFloatingActionButton c;
    public final ey2 d;
    public final FastScroller e;
    public final CircularProgressIndicator f;
    public final RecyclerView k;

    public g20(CoordinatorLayout coordinatorLayout, x00 x00Var, ExtendedFloatingActionButton extendedFloatingActionButton, ey2 ey2Var, FastScroller fastScroller, CircularProgressIndicator circularProgressIndicator, RecyclerView recyclerView) {
        this.a = coordinatorLayout;
        this.b = x00Var;
        this.c = extendedFloatingActionButton;
        this.d = ey2Var;
        this.e = fastScroller;
        this.f = circularProgressIndicator;
        this.k = recyclerView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
