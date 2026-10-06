package defpackage;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class lp3 implements jk8 {
    public final CoordinatorLayout a;
    public final ExtendedFloatingActionButton b;
    public final zx2 c;
    public final RecyclerView d;
    public final SwipeRefreshLayout e;

    public lp3(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, zx2 zx2Var, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout) {
        this.a = coordinatorLayout;
        this.b = extendedFloatingActionButton;
        this.c = zx2Var;
        this.d = recyclerView;
        this.e = swipeRefreshLayout;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
