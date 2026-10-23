package defpackage;

import android.view.animation.Animation;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zt7 implements Animation.AnimationListener {
    public final /* synthetic */ SwipeRefreshLayout a;

    public zt7(SwipeRefreshLayout swipeRefreshLayout) {
        this.a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        SwipeRefreshLayout swipeRefreshLayout = this.a;
        xt7 xt7Var = new xt7(swipeRefreshLayout);
        swipeRefreshLayout.T = xt7Var;
        xt7Var.setDuration(150L);
        c71 c71Var = swipeRefreshLayout.L;
        c71Var.a = null;
        c71Var.clearAnimation();
        swipeRefreshLayout.L.startAnimation(swipeRefreshLayout.T);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
