package defpackage;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.l4digital.fastscroll.FastScroller;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class th7 implements jk8 {
    public final CoordinatorLayout a;
    public final ExtendedFloatingActionButton b;
    public final FastScroller c;
    public final RecyclerView d;
    public final tf2 e;

    public th7(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, FastScroller fastScroller, RecyclerView recyclerView, tf2 tf2Var) {
        this.a = coordinatorLayout;
        this.b = extendedFloatingActionButton;
        this.c = fastScroller;
        this.d = recyclerView;
        this.e = tf2Var;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
