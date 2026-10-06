package defpackage;

import android.animation.ValueAnimator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vn0 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ fo0 a;

    public vn0(fo0 fo0Var) {
        this.a = fo0Var;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.i.setTranslationY(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
