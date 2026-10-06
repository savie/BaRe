package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import com.l4digital.fastscroll.FastScroller;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v7 extends AnimatorListenerAdapter {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ v7(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) obj;
                actionBarOverlayLayout.O = null;
                actionBarOverlayLayout.q = false;
                break;
            case 1:
            default:
                super.onAnimationCancel(animator);
                break;
            case 2:
                super.onAnimationCancel(animator);
                FastScroller fastScroller = (FastScroller) obj;
                fastScroller.I.setVisibility(8);
                fastScroller.L = null;
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) obj;
                actionBarOverlayLayout.O = null;
                actionBarOverlayLayout.q = false;
                break;
            case 1:
                lr2 lr2Var = (lr2) obj;
                lr2Var.p();
                lr2Var.r.start();
                break;
            default:
                super.onAnimationEnd(animator);
                FastScroller fastScroller = (FastScroller) obj;
                fastScroller.I.setVisibility(8);
                fastScroller.L = null;
                break;
        }
    }
}
