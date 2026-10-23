package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ve2 extends AnimatorListenerAdapter {
    public final /* synthetic */ fh6 a;
    public final /* synthetic */ ViewPropertyAnimator b;
    public final /* synthetic */ View c;
    public final /* synthetic */ cf2 d;

    public ve2(cf2 cf2Var, fh6 fh6Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.d = cf2Var;
        this.a = fh6Var;
        this.b = viewPropertyAnimator;
        this.c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.b.setListener(null);
        this.c.setAlpha(1.0f);
        cf2 cf2Var = this.d;
        fh6 fh6Var = this.a;
        cf2Var.c(fh6Var);
        cf2Var.q.remove(fh6Var);
        cf2Var.i();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.d.getClass();
    }
}
