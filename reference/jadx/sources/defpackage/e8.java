package defpackage;

import androidx.appcompat.view.menu.ActionMenuItemView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e8 extends yq3 {
    public final /* synthetic */ ActionMenuItemView q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e8(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.q = actionMenuItemView;
    }

    @Override // defpackage.yq3
    public final af7 b() {
        g8 g8Var;
        f8 f8Var = this.q.x;
        if (f8Var == null || (g8Var = ((h8) f8Var).a.M) == null) {
            return null;
        }
        return g8Var.a();
    }

    @Override // defpackage.yq3
    public final boolean c() {
        af7 af7VarB;
        ActionMenuItemView actionMenuItemView = this.q;
        ec5 ec5Var = actionMenuItemView.r;
        return ec5Var != null && ec5Var.a(actionMenuItemView.n) && (af7VarB = b()) != null && af7VarB.a();
    }
}
