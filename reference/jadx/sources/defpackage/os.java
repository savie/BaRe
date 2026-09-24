package defpackage;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.l4digital.fastscroll.FastScroller;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class os implements jk8 {
    public final DrawerLayout a;
    public final x00 b;
    public final RecyclerView c;
    public final ExtendedFloatingActionButton d;
    public final ConstraintLayout e;
    public final zx2 f;
    public final FastScroller k;
    public final QuickRecyclerView n;
    public final QuickRecyclerView p;
    public final SwipeRefreshLayout q;

    public os(DrawerLayout drawerLayout, x00 x00Var, RecyclerView recyclerView, ExtendedFloatingActionButton extendedFloatingActionButton, ConstraintLayout constraintLayout, zx2 zx2Var, FastScroller fastScroller, QuickRecyclerView quickRecyclerView, QuickRecyclerView quickRecyclerView2, SwipeRefreshLayout swipeRefreshLayout) {
        this.a = drawerLayout;
        this.b = x00Var;
        this.c = recyclerView;
        this.d = extendedFloatingActionButton;
        this.e = constraintLayout;
        this.f = zx2Var;
        this.k = fastScroller;
        this.n = quickRecyclerView;
        this.p = quickRecyclerView2;
        this.q = swipeRefreshLayout;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
