package defpackage;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yt7 extends Animation {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ SwipeRefreshLayout c;

    public yt7(SwipeRefreshLayout swipeRefreshLayout, int i, int i2) {
        this.c = swipeRefreshLayout;
        this.a = i;
        this.b = i2;
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation transformation) {
        u71 u71Var = this.c.R;
        int i = this.a;
        u71Var.setAlpha((int) (((this.b - i) * f) + i));
    }
}
