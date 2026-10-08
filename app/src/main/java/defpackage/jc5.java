package defpackage;

import android.view.ActionProvider;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jc5 implements ActionProvider.VisibilityListener {
    public om5 a;
    public final ActionProvider b;

    public jc5(nc5 nc5Var, ActionProvider actionProvider) {
        this.b = actionProvider;
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z) {
        om5 om5Var = this.a;
        if (om5Var != null) {
            fc5 fc5Var = ((ic5) om5Var.a).y;
            fc5Var.n = true;
            fc5Var.p(true);
        }
    }
}
