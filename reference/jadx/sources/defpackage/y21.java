package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y21 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ b31 a;

    public y21(b31 b31Var) {
        this.a = b31Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        b31 b31Var = this.a;
        ViewTreeObserver viewTreeObserver = b31Var.Q;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                b31Var.Q = view.getViewTreeObserver();
            }
            b31Var.Q.removeGlobalOnLayoutListener(b31Var.q);
        }
        view.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
