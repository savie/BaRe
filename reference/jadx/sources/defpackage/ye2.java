package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ye2 extends AnimatorListenerAdapter {
    public final /* synthetic */ af2 a;
    public final /* synthetic */ ViewPropertyAnimator b;
    public final /* synthetic */ View c;
    public final /* synthetic */ cf2 d;

    public ye2(cf2 cf2Var, af2 af2Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.d = cf2Var;
        this.a = af2Var;
        this.b = viewPropertyAnimator;
        this.c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.b.setListener(null);
        View view = this.c;
        view.setAlpha(1.0f);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        af2 af2Var = this.a;
        fh6 fh6Var = af2Var.a;
        cf2 cf2Var = this.d;
        cf2Var.c(fh6Var);
        cf2Var.r.remove(af2Var.a);
        cf2Var.i();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.d.getClass();
    }
}
