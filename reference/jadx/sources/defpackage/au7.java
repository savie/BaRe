package defpackage;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class au7 extends Animation {
    public final /* synthetic */ SwipeRefreshLayout a;

    public au7(SwipeRefreshLayout swipeRefreshLayout) {
        this.a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation transformation) {
        SwipeRefreshLayout swipeRefreshLayout = this.a;
        int iAbs = swipeRefreshLayout.P - Math.abs(swipeRefreshLayout.O);
        int i = swipeRefreshLayout.N;
        swipeRefreshLayout.setTargetOffsetTopAndBottom((i + ((int) ((iAbs - i) * f))) - swipeRefreshLayout.L.getTop());
        u71 u71Var = swipeRefreshLayout.R;
        float f2 = 1.0f - f;
        t71 t71Var = u71Var.a;
        if (f2 != t71Var.p) {
            t71Var.p = f2;
        }
        u71Var.invalidateSelf();
    }
}
