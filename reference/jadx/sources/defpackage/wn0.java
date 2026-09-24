package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.android.material.snackbar.SnackbarContentLayout;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wn0 extends AnimatorListenerAdapter {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public wn0(fo0 fo0Var, int i) {
        this.a = 0;
        this.b = fo0Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.a) {
            case 1:
                ((cm0) this.b).d();
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
                ((fo0) obj).d();
                break;
            case 1:
                ((cm0) obj).e();
                break;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) obj;
                sideSheetBehavior.x(5);
                WeakReference weakReference = sideSheetBehavior.p;
                if (weakReference != null && weakReference.get() != null) {
                    ((View) sideSheetBehavior.p.get()).requestLayout();
                    break;
                }
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                fo0 fo0Var = (fo0) obj;
                SnackbarContentLayout snackbarContentLayout = fo0Var.j;
                int i2 = fo0Var.b;
                snackbarContentLayout.a.setAlpha(1.0f);
                long j = i2;
                ViewPropertyAnimator duration = snackbarContentLayout.a.animate().alpha(0.0f).setDuration(j);
                TimeInterpolator timeInterpolator = snackbarContentLayout.d;
                duration.setInterpolator(timeInterpolator).setStartDelay(0L).start();
                if (snackbarContentLayout.b.getVisibility() == 0) {
                    snackbarContentLayout.b.setAlpha(1.0f);
                    snackbarContentLayout.b.animate().alpha(0.0f).setDuration(j).setInterpolator(timeInterpolator).setStartDelay(0L).start();
                }
                break;
            case 1:
                ((cm0) obj).f(animator);
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }

    public /* synthetic */ wn0(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }
}
