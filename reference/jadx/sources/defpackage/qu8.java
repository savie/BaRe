package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qu8 extends AnimatorListenerAdapter {
    public final /* synthetic */ yu8 a;
    public final /* synthetic */ View b;

    public qu8(yu8 yu8Var, View view) {
        this.a = yu8Var;
        this.b = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        yu8 yu8Var = this.a;
        yu8Var.a.e(1.0f);
        tu8.f(yu8Var, this.b);
    }
}
