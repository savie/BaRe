package defpackage;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class il3 implements jk8 {
    public final CoordinatorLayout a;
    public final w00 b;
    public final jl3 c;
    public final jl3 d;
    public final nl3 e;
    public final NestedScrollView f;

    public il3(CoordinatorLayout coordinatorLayout, w00 w00Var, jl3 jl3Var, jl3 jl3Var2, nl3 nl3Var, NestedScrollView nestedScrollView) {
        this.a = coordinatorLayout;
        this.b = w00Var;
        this.c = jl3Var;
        this.d = jl3Var2;
        this.e = nl3Var;
        this.f = nestedScrollView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
