package androidx.fragment.app;

import android.animation.AnimatorSet;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import defpackage.ag2;
import defpackage.la;
import defpackage.xj0;
import defpackage.yf2;
import defpackage.zf2;
import defpackage.zj7;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends zj7 {
    public final d c;
    public AnimatorSet d;

    public e(d dVar) {
        this.c = dVar;
    }

    @Override // defpackage.zj7
    public final void a(ViewGroup viewGroup) {
        viewGroup.getClass();
        AnimatorSet animatorSet = this.d;
        h0 h0Var = this.c.a;
        if (animatorSet == null) {
            h0Var.c(this);
            return;
        }
        if (h0Var.g) {
            ag2.a.a(animatorSet);
        } else {
            animatorSet.end();
        }
        if (z.K(2)) {
            StringBuilder sb = new StringBuilder("Animator from operation ");
            sb.append(h0Var);
            sb.append(" has been canceled");
            sb.append(h0Var.g ? " with seeking." : ".");
            sb.append(' ');
            Log.v("FragmentManager", sb.toString());
        }
    }

    @Override // defpackage.zj7
    public final void b(ViewGroup viewGroup) {
        viewGroup.getClass();
        h0 h0Var = this.c.a;
        AnimatorSet animatorSet = this.d;
        if (animatorSet == null) {
            h0Var.c(this);
            return;
        }
        animatorSet.start();
        if (z.K(2)) {
            Log.v("FragmentManager", "Animator from operation " + h0Var + " has started.");
        }
    }

    @Override // defpackage.zj7
    public final void c(xj0 xj0Var, ViewGroup viewGroup) {
        viewGroup.getClass();
        h0 h0Var = this.c.a;
        AnimatorSet animatorSet = this.d;
        if (animatorSet == null) {
            h0Var.c(this);
            return;
        }
        if (Build.VERSION.SDK_INT < 34 || !h0Var.c.mTransitioning) {
            return;
        }
        if (z.K(2)) {
            Log.v("FragmentManager", "Adding BackProgressCallbacks for Animators to operation " + h0Var);
        }
        long jA = zf2.a.a(animatorSet);
        long j = (long) (xj0Var.c * jA);
        if (j == 0) {
            j = 1;
        }
        if (j == jA) {
            j = jA - 1;
        }
        if (z.K(2)) {
            Log.v("FragmentManager", "Setting currentPlayTime to " + j + " for Animator " + animatorSet + " on operation " + h0Var);
        }
        ag2.a.b(animatorSet, j);
    }

    @Override // defpackage.zj7
    public final void d(ViewGroup viewGroup) {
        e eVar;
        viewGroup.getClass();
        d dVar = this.c;
        if (dVar.a()) {
            return;
        }
        Context context = viewGroup.getContext();
        context.getClass();
        la laVarB = dVar.b(context);
        this.d = laVarB != null ? (AnimatorSet) laVarB.b : null;
        h0 h0Var = dVar.a;
        o oVar = h0Var.c;
        boolean z = h0Var.a == 3;
        View view = oVar.mView;
        viewGroup.startViewTransition(view);
        AnimatorSet animatorSet = this.d;
        if (animatorSet != null) {
            eVar = this;
            animatorSet.addListener(new yf2(viewGroup, view, z, h0Var, eVar));
        } else {
            eVar = this;
        }
        AnimatorSet animatorSet2 = eVar.d;
        if (animatorSet2 != null) {
            animatorSet2.setTarget(view);
        }
    }
}
