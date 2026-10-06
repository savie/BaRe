package defpackage;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wx5 implements jk8 {
    public final CoordinatorLayout a;
    public final w00 b;
    public final e38 c;
    public final e38 d;
    public final NestedScrollView e;

    public wx5(CoordinatorLayout coordinatorLayout, w00 w00Var, e38 e38Var, e38 e38Var2, NestedScrollView nestedScrollView) {
        this.a = coordinatorLayout;
        this.b = w00Var;
        this.c = e38Var;
        this.d = e38Var2;
        this.e = nestedScrollView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
