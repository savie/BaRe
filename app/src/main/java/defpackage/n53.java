package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n53 extends AnimatorListenerAdapter {
    public boolean a = false;
    public final /* synthetic */ r53 b;

    public n53(r53 r53Var) {
        this.b = r53Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.a) {
            this.a = false;
            return;
        }
        r53 r53Var = this.b;
        if (((Float) r53Var.z.getAnimatedValue()).floatValue() == 0.0f) {
            r53Var.A = 0;
            r53Var.f(0);
        } else {
            r53Var.A = 2;
            r53Var.s.invalidate();
        }
    }
}
