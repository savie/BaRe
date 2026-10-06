package defpackage;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.view.View;
import java.util.List;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d37 implements Animator.AnimatorListener {
    public final /* synthetic */ ScheduleFabMenuView a;
    public final /* synthetic */ AnimatorSet b;
    public final /* synthetic */ List c;
    public final /* synthetic */ bt3 d;

    public d37(ScheduleFabMenuView scheduleFabMenuView, AnimatorSet animatorSet, List list, bt3 bt3Var) {
        this.a = scheduleFabMenuView;
        this.b = animatorSet;
        this.c = list;
        this.d = bt3Var;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.a.d.remove(this.b);
        for (View view : this.c) {
            view.setAlpha(view.isEnabled() ? 1.0f : 0.5f);
            view.setClipBounds(null);
        }
        bt3 bt3Var = this.d;
        if (bt3Var != null) {
            bt3Var.invoke();
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
