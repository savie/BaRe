package defpackage;

import android.animation.ValueAnimator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r71 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ t71 a;
    public final /* synthetic */ u71 b;

    public r71(u71 u71Var, t71 t71Var) {
        this.b = u71Var;
        this.a = t71Var;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        t71 t71Var = this.a;
        u71.d(fFloatValue, t71Var);
        u71 u71Var = this.b;
        u71Var.a(fFloatValue, t71Var, false);
        u71Var.invalidateSelf();
    }
}
