package defpackage;

import android.animation.Animator;
import android.animation.ValueAnimator;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e37 implements Animator.AnimatorListener {
    public final /* synthetic */ ScheduleFabMenuView a;
    public final /* synthetic */ ValueAnimator b;

    public e37(ScheduleFabMenuView scheduleFabMenuView, ValueAnimator valueAnimator) {
        this.a = scheduleFabMenuView;
        this.b = valueAnimator;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ScheduleFabMenuView scheduleFabMenuView = this.a;
        if (pe4.d(scheduleFabMenuView.I, this.b)) {
            scheduleFabMenuView.I = null;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
