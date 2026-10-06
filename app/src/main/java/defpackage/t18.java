package defpackage;

import android.animation.ValueAnimator;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t18 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ TextView a;

    public t18(TextView textView) {
        this.a = textView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        TextView textView = this.a;
        textView.setScaleX(fFloatValue);
        textView.setScaleY(fFloatValue);
    }
}
