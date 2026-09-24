package defpackage;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ro8 implements jk8 {
    public final CoordinatorLayout a;
    public final w00 b;
    public final NestedScrollView c;
    public final xp3 d;
    public final xp3 e;
    public final so8 f;

    public ro8(CoordinatorLayout coordinatorLayout, w00 w00Var, NestedScrollView nestedScrollView, xp3 xp3Var, xp3 xp3Var2, so8 so8Var) {
        this.a = coordinatorLayout;
        this.b = w00Var;
        this.c = nestedScrollView;
        this.d = xp3Var;
        this.e = xp3Var2;
        this.f = so8Var;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
