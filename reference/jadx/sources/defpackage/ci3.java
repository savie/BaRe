package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ci3 extends AnimatorListenerAdapter {
    public boolean a;
    public final /* synthetic */ hi3 b;

    public ci3(hi3 hi3Var) {
        this.b = hi3Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        hi3 hi3Var = this.b;
        hi3Var.r = 0;
        hi3Var.m = null;
        if (this.a) {
            return;
        }
        hi3Var.s.a(4, false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        hi3 hi3Var = this.b;
        hi3Var.s.a(0, false);
        hi3Var.r = 1;
        hi3Var.m = animator;
        this.a = false;
    }
}
