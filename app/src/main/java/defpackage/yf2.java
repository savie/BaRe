package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.e;
import androidx.fragment.app.h0;
import androidx.fragment.app.z;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yf2 extends AnimatorListenerAdapter {
    public final /* synthetic */ ViewGroup a;
    public final /* synthetic */ View b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ h0 d;
    public final /* synthetic */ e e;

    public yf2(ViewGroup viewGroup, View view, boolean z, h0 h0Var, e eVar) {
        this.a = viewGroup;
        this.b = view;
        this.c = z;
        this.d = h0Var;
        this.e = eVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        animator.getClass();
        ViewGroup viewGroup = this.a;
        View view = this.b;
        viewGroup.endViewTransition(view);
        boolean z = this.c;
        h0 h0Var = this.d;
        if (z || h0Var.a == 3) {
            int i = h0Var.a;
            view.getClass();
            fz5.b(i, view, viewGroup);
        }
        e eVar = this.e;
        eVar.c.a.c(eVar);
        if (z.K(2)) {
            Log.v("FragmentManager", "Animator from operation " + h0Var + " has ended.");
        }
    }
}
