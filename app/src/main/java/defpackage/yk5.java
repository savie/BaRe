package defpackage;

import android.animation.ValueAnimator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yk5 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ float a;
    public final /* synthetic */ al5 b;

    public yk5(al5 al5Var, float f) {
        this.b = al5Var;
        this.a = f;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.b.d(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.a);
    }
}
