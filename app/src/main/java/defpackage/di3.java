package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class di3 extends AnimatorListenerAdapter {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ di3(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                hi3 hi3Var = (hi3) obj;
                hi3Var.r = 0;
                hi3Var.m = null;
                break;
            default:
                super.onAnimationEnd(animator);
                su4 su4Var = (su4) obj;
                su4Var.c();
                zb zbVar = su4Var.q;
                if (zbVar != null) {
                    zbVar.a((mb4) su4Var.a);
                }
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.a) {
            case 0:
                hi3 hi3Var = (hi3) this.b;
                hi3Var.s.a(0, false);
                hi3Var.r = 2;
                hi3Var.m = animator;
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }
}
