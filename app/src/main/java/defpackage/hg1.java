package defpackage;

import android.view.View;
import android.widget.FrameLayout;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.progressindicator.CircularProgressIndicator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hg1 implements jk8 {
    public final FrameLayout a;
    public final CircularProgressIndicator b;
    public final NestedScrollView c;
    public final tf1 d;
    public final xf1 e;
    public final yf1 f;
    public final ey2 k;

    public hg1(FrameLayout frameLayout, CircularProgressIndicator circularProgressIndicator, NestedScrollView nestedScrollView, tf1 tf1Var, xf1 xf1Var, yf1 yf1Var, ey2 ey2Var) {
        this.a = frameLayout;
        this.b = circularProgressIndicator;
        this.c = nestedScrollView;
        this.d = tf1Var;
        this.e = xf1Var;
        this.f = yf1Var;
        this.k = ey2Var;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
