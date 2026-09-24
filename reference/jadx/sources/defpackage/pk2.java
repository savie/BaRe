package defpackage;

import android.animation.ValueAnimator;
import android.content.Context;
import android.view.animation.LinearInterpolator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pk2 extends wx3 {
    @Override // defpackage.wx3
    public final void A(Object obj, float f) {
        final qk2 qk2Var = (qk2) obj;
        qk2Var.H.b = f / 10000.0f;
        qk2Var.invalidateSelf();
        int i = (int) f;
        lm0 lm0Var = qk2Var.b;
        if (lm0Var.b(true)) {
            Context context = qk2Var.a;
            if (qk2Var.L == null) {
                LinearInterpolator linearInterpolator = ed.a;
                qk2Var.N = ji8.G(context, R.attr.motionEasingStandardInterpolator, linearInterpolator);
                qk2Var.O = ji8.G(context, R.attr.motionEasingEmphasizedAccelerateInterpolator, linearInterpolator);
                ValueAnimator valueAnimator = new ValueAnimator();
                qk2Var.L = valueAnimator;
                valueAnimator.setDuration(500L);
                qk2Var.L.setFloatValues(0.0f, 1.0f);
                qk2Var.L.setInterpolator(null);
                qk2Var.L.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: nk2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        qk2 qk2Var2 = qk2Var;
                        qk2Var2.H.e = qk2Var2.M.getInterpolation(qk2Var2.L.getAnimatedFraction());
                    }
                });
            }
            float f2 = i;
            float f3 = (f2 < lm0Var.o * 10000.0f || f2 > lm0Var.p * 10000.0f) ? 0.0f : 1.0f;
            float f4 = qk2Var.I;
            ValueAnimator valueAnimator2 = qk2Var.L;
            if (f3 == f4) {
                if (valueAnimator2.isRunning()) {
                    return;
                }
                qk2Var.H.e = f3;
                qk2Var.invalidateSelf();
                return;
            }
            if (valueAnimator2.isRunning()) {
                qk2Var.L.cancel();
            }
            qk2Var.I = f3;
            if (f3 == 1.0f) {
                qk2Var.M = qk2Var.N;
                qk2Var.L.start();
            } else {
                qk2Var.M = qk2Var.O;
                qk2Var.L.reverse();
            }
        }
    }

    @Override // defpackage.wx3
    public final float m(Object obj) {
        return ((qk2) obj).H.b * 10000.0f;
    }
}
