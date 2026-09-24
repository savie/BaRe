package defpackage;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ym3 implements jk8 {
    public final CoordinatorLayout a;
    public final ExtendedFloatingActionButton b;
    public final ix0 c;
    public final RecyclerView d;
    public final RecyclerView e;
    public final ix0 f;

    public ym3(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, ix0 ix0Var, RecyclerView recyclerView, RecyclerView recyclerView2, ix0 ix0Var2) {
        this.a = coordinatorLayout;
        this.b = extendedFloatingActionButton;
        this.c = ix0Var;
        this.d = recyclerView;
        this.e = recyclerView2;
        this.f = ix0Var2;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
