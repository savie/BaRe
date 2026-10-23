package defpackage;

import android.view.animation.Animation;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vt7 implements Animation.AnimationListener {
    public final /* synthetic */ SwipeRefreshLayout a;

    public vt7(SwipeRefreshLayout swipeRefreshLayout) {
        this.a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        du7 du7Var;
        SwipeRefreshLayout swipeRefreshLayout = this.a;
        if (!swipeRefreshLayout.c) {
            swipeRefreshLayout.l();
            return;
        }
        swipeRefreshLayout.R.setAlpha(255);
        swipeRefreshLayout.R.start();
        if (swipeRefreshLayout.W && (du7Var = swipeRefreshLayout.b) != null) {
            du7Var.b();
        }
        swipeRefreshLayout.y = swipeRefreshLayout.L.getTop();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
