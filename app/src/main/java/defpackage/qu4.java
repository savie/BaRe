package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qu4 extends AnimatorListenerAdapter {
    public final /* synthetic */ ru4 a;

    public qu4(ru4 ru4Var) {
        this.a = ru4Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        super.onAnimationRepeat(animator);
        ru4 ru4Var = this.a;
        ru4Var.f = (ru4Var.f + 1) % ru4Var.e.e.length;
        ru4Var.k = true;
    }
}
