package defpackage;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.PathInterpolator;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pu8 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ yu8 a;
    public final /* synthetic */ tv8 b;
    public final /* synthetic */ tv8 c;
    public final /* synthetic */ int d;
    public final /* synthetic */ View e;

    public pu8(yu8 yu8Var, tv8 tv8Var, tv8 tv8Var2, int i, View view) {
        this.a = yu8Var;
        this.b = tv8Var;
        this.c = tv8Var2;
        this.d = i;
        this.e = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        hv8 bv8Var;
        float animatedFraction = valueAnimator.getAnimatedFraction();
        yu8 yu8Var = this.a;
        xu8 xu8Var = yu8Var.a;
        xu8Var.e(animatedFraction);
        float fC = xu8Var.c();
        PathInterpolator pathInterpolator = tu8.e;
        int i = Build.VERSION.SDK_INT;
        tv8 tv8Var = this.b;
        if (i >= 36) {
            bv8Var = new gv8(tv8Var);
        } else if (i >= 35) {
            bv8Var = new fv8(tv8Var);
        } else if (i >= 34) {
            bv8Var = new ev8(tv8Var);
        } else if (i >= 31) {
            bv8Var = new dv8(tv8Var);
        } else if (i >= 30) {
            bv8Var = new cv8(tv8Var);
        } else {
            bv8Var = i >= 29 ? new bv8(tv8Var) : new zu8(tv8Var);
        }
        for (int i2 = 1; i2 <= 512; i2 <<= 1) {
            int i3 = this.d & i2;
            qv8 qv8Var = tv8Var.a;
            if (i3 == 0) {
                bv8Var.d(i2, qv8Var.h(i2));
            } else {
                vc4 vc4VarH = qv8Var.h(i2);
                vc4 vc4VarH2 = this.c.a.h(i2);
                float f = 1.0f - fC;
                bv8Var.d(i2, tv8.e(vc4VarH, (int) (((double) ((vc4VarH.a - vc4VarH2.a) * f)) + 0.5d), (int) (((double) ((vc4VarH.b - vc4VarH2.b) * f)) + 0.5d), (int) (((double) ((vc4VarH.c - vc4VarH2.c) * f)) + 0.5d), (int) (((double) ((vc4VarH.d - vc4VarH2.d) * f)) + 0.5d)));
            }
        }
        tu8.h(this.e, bv8Var.b(), Collections.singletonList(yu8Var));
    }
}
