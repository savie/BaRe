package defpackage;

import android.view.View;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g34 implements Runnable {
    public final CoordinatorLayout a;
    public final View b;
    public final /* synthetic */ h34 c;

    public g34(h34 h34Var, CoordinatorLayout coordinatorLayout, View view) {
        this.c = h34Var;
        this.a = coordinatorLayout;
        this.b = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h34 h34Var;
        OverScroller overScroller;
        View view = this.b;
        if (view == null || (overScroller = (h34Var = this.c).d) == null) {
            return;
        }
        boolean zComputeScrollOffset = overScroller.computeScrollOffset();
        CoordinatorLayout coordinatorLayout = this.a;
        if (zComputeScrollOffset) {
            h34Var.A(coordinatorLayout, view, h34Var.d.getCurrY());
            view.postOnAnimation(this);
            return;
        }
        AppBarLayout appBarLayout = (AppBarLayout) view;
        ((AppBarLayout.BaseBehavior) h34Var).G(coordinatorLayout, appBarLayout);
        if (appBarLayout.r) {
            appBarLayout.e(appBarLayout.f(AppBarLayout.BaseBehavior.D(coordinatorLayout)), !appBarLayout.n);
        }
    }
}
