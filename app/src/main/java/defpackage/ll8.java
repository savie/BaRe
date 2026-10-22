package defpackage;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ll8 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ View a;
    public final /* synthetic */ km0 b;
    public final /* synthetic */ jl8 c;

    public ll8(km0 km0Var, km0 km0Var2, jl8 jl8Var) {
        this.a = km0Var;
        this.b = km0Var2;
        this.c = jl8Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.a.removeOnAttachStateChangeListener(this);
        jl8 jl8Var = this.c;
        km0 km0Var = this.b;
        yt5.a(km0Var, new x7(km0Var, jl8Var, 4));
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
