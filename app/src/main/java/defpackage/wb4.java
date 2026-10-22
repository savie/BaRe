package defpackage;

import android.animation.ValueAnimator;
import com.warkiz.widget.IndicatorSeekBar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wb4 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ float a;
    public final /* synthetic */ int b;
    public final /* synthetic */ IndicatorSeekBar c;

    public wb4(IndicatorSeekBar indicatorSeekBar, float f, int i) {
        this.c = indicatorSeekBar;
        this.a = f;
        this.b = i;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        IndicatorSeekBar indicatorSeekBar = this.c;
        indicatorSeekBar.k = indicatorSeekBar.M;
        float f = indicatorSeekBar.S[this.b];
        float f2 = this.a;
        if (f2 - f > 0.0f) {
            indicatorSeekBar.M = f2 - ((Float) valueAnimator.getAnimatedValue()).floatValue();
        } else {
            indicatorSeekBar.M = ((Float) valueAnimator.getAnimatedValue()).floatValue() + f2;
        }
        indicatorSeekBar.v(indicatorSeekBar.M);
        indicatorSeekBar.setSeekListener(false);
        vb4 vb4Var = indicatorSeekBar.j0;
        if (vb4Var != null && indicatorSeekBar.m0) {
            vb4Var.c();
            indicatorSeekBar.w();
        }
        indicatorSeekBar.invalidate();
    }
}
