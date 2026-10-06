package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class lo5 implements jk8 {
    public final CoordinatorLayout a;
    public final w00 b;
    public final NestedScrollView c;
    public final TextView d;

    public lo5(CoordinatorLayout coordinatorLayout, w00 w00Var, NestedScrollView nestedScrollView, TextView textView) {
        this.a = coordinatorLayout;
        this.b = w00Var;
        this.c = nestedScrollView;
        this.d = textView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
