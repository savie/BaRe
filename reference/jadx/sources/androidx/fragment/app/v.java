package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v implements View.OnAttachStateChangeListener {
    public final /* synthetic */ d0 a;
    public final /* synthetic */ w b;

    public v(w wVar, d0 d0Var) {
        this.b = wVar;
        this.a = d0Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        d0 d0Var = this.a;
        o oVar = d0Var.c;
        d0Var.k();
        g.i((ViewGroup) oVar.mView.getParent(), this.b.a).h();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
