package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import com.google.android.material.behavior.HideViewOnScrollBehavior;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class q44 extends AnimatorListenerAdapter {
    public final /* synthetic */ int a = 1;
    public final View b;
    public final Object c;

    public q44(View view, jm1 jm1Var) {
        this.b = view;
        this.c = jm1Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.a) {
            case 1:
                jm1 jm1Var = (jm1) this.c;
                if (jm1Var != null) {
                    jm1Var.getClass();
                }
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i = this.a;
        Object obj = this.c;
        View view = this.b;
        switch (i) {
            case 0:
                HideViewOnScrollBehavior hideViewOnScrollBehavior = (HideViewOnScrollBehavior) obj;
                hideViewOnScrollBehavior.k = null;
                if (hideViewOnScrollBehavior.j == 1 && view.getVisibility() == 0) {
                    view.setVisibility(4);
                    break;
                }
                break;
            default:
                jm1 jm1Var = (jm1) obj;
                if (jm1Var != null) {
                    jm1Var.F();
                }
                a(view);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.a) {
            case 1:
                b(this.b);
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }

    public q44(HideViewOnScrollBehavior hideViewOnScrollBehavior, View view) {
        this.c = hideViewOnScrollBehavior;
        this.b = view;
    }

    public void a(View view) {
    }

    public void b(View view) {
    }
}
