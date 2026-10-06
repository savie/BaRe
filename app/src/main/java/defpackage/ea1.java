package defpackage;

import android.animation.ValueAnimator;
import android.view.View;
import com.google.android.material.timepicker.ClockHandView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ea1 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ View b;

    public /* synthetic */ ea1(View view, int i) {
        this.a = i;
        this.b = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i = this.a;
        View view = this.b;
        switch (i) {
            case 0:
                int i2 = ClockHandView.N;
                ((ClockHandView) view).c(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
                break;
            default:
                view.setTranslationX((1.0f - valueAnimator.getAnimatedFraction()) * (-30.0f));
                break;
        }
    }
}
