package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ul7 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ vl7 a;

    public ul7(vl7 vl7Var) {
        this.a = vl7Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        vl7 vl7Var = this.a;
        ViewTreeObserver viewTreeObserver = vl7Var.H;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                vl7Var.H = view.getViewTreeObserver();
            }
            vl7Var.H.removeGlobalOnLayoutListener(vl7Var.q);
        }
        view.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
