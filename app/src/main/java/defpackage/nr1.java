package defpackage;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nr1 implements jk8 {
    public final CoordinatorLayout a;
    public final w00 b;
    public final ExtendedFloatingActionButton c;
    public final zx2 d;
    public final CircularProgressIndicator e;
    public final RecyclerView f;

    public nr1(CoordinatorLayout coordinatorLayout, w00 w00Var, ExtendedFloatingActionButton extendedFloatingActionButton, zx2 zx2Var, CircularProgressIndicator circularProgressIndicator, RecyclerView recyclerView) {
        this.a = coordinatorLayout;
        this.b = w00Var;
        this.c = extendedFloatingActionButton;
        this.d = zx2Var;
        this.e = circularProgressIndicator;
        this.f = recyclerView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
