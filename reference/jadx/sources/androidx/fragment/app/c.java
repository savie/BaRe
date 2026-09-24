package androidx.fragment.app;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import defpackage.gr3;
import defpackage.l0;
import defpackage.la;
import defpackage.xf2;
import defpackage.zj7;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends zj7 {
    public final d c;

    public c(d dVar) {
        this.c = dVar;
    }

    @Override // defpackage.zj7
    public final void a(ViewGroup viewGroup) {
        viewGroup.getClass();
        h0 h0Var = this.c.a;
        View view = h0Var.c.mView;
        view.clearAnimation();
        viewGroup.endViewTransition(view);
        h0Var.c(this);
        if (z.K(2)) {
            Log.v("FragmentManager", "Animation from operation " + h0Var + " has been cancelled.");
        }
    }

    @Override // defpackage.zj7
    public final void b(ViewGroup viewGroup) {
        viewGroup.getClass();
        d dVar = this.c;
        h0 h0Var = dVar.a;
        if (dVar.a()) {
            h0Var.c(this);
            return;
        }
        Context context = viewGroup.getContext();
        View view = h0Var.c.mView;
        context.getClass();
        la laVarB = dVar.b(context);
        if (laVarB == null) {
            l0.e("Required value was null.");
            return;
        }
        Animation animation = (Animation) laVarB.a;
        if (animation == null) {
            l0.e("Required value was null.");
            return;
        }
        if (h0Var.a != 1) {
            view.startAnimation(animation);
            h0Var.c(this);
            return;
        }
        viewGroup.startViewTransition(view);
        gr3 gr3Var = new gr3(animation, viewGroup, view);
        gr3Var.setAnimationListener(new xf2(h0Var, viewGroup, view, this));
        view.startAnimation(gr3Var);
        if (z.K(2)) {
            Log.v("FragmentManager", "Animation from operation " + h0Var + " has started.");
        }
    }
}
