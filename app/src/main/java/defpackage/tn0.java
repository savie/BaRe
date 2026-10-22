package defpackage;

import android.animation.ValueAnimator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tn0 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ tn0(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                eo0 eo0Var = ((fo0) obj).i;
                eo0Var.setScaleX(fFloatValue);
                eo0Var.setScaleY(fFloatValue);
                break;
            default:
                c35 c35Var = (c35) obj;
                hp1 hp1Var = c35Var.x;
                if (hp1Var != null) {
                    hp1Var.s(c35Var.c.a());
                }
                break;
        }
    }
}
