package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.transformation.ExpandableTransformationBehavior;
import com.l4digital.fastscroll.FastScroller;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q91 extends AnimatorListenerAdapter {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ q91(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.a) {
            case 2:
                super.onAnimationCancel(animator);
                FastScroller fastScroller = (FastScroller) this.b;
                fastScroller.J.setVisibility(8);
                fastScroller.K = null;
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((r91) obj).b.h(false);
                break;
            case 1:
                ((ExpandableTransformationBehavior) obj).b = null;
                break;
            default:
                super.onAnimationEnd(animator);
                FastScroller fastScroller = (FastScroller) obj;
                fastScroller.J.setVisibility(8);
                fastScroller.K = null;
                break;
        }
    }
}
