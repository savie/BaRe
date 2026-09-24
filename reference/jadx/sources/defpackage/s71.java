package defpackage;

import android.animation.Animator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s71 implements Animator.AnimatorListener {
    public final /* synthetic */ t71 a;
    public final /* synthetic */ u71 b;

    public s71(u71 u71Var, t71 t71Var) {
        this.b = u71Var;
        this.a = t71Var;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        u71 u71Var = this.b;
        t71 t71Var = this.a;
        u71Var.a(1.0f, t71Var, true);
        t71Var.k = t71Var.e;
        t71Var.l = t71Var.f;
        t71Var.m = t71Var.g;
        t71Var.a((t71Var.j + 1) % t71Var.i.length);
        if (!u71Var.f) {
            u71Var.e += 1.0f;
            return;
        }
        u71Var.f = false;
        animator.cancel();
        animator.setDuration(1332L);
        animator.start();
        if (t71Var.n) {
            t71Var.n = false;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.b.e = 0.0f;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
    }
}
