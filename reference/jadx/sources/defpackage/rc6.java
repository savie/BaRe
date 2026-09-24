package defpackage;

import androidx.appcompat.widget.ActionMenuView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rc6 implements uc6, vc5 {
    public boolean a;
    public final /* synthetic */ Object b;

    public rc6(StringBuilder sb) {
        this.b = sb;
        this.a = true;
    }

    @Override // defpackage.uc6
    public void a(tc6 tc6Var, int i) {
        StringBuilder sb = (StringBuilder) this.b;
        if (this.a) {
            this.a = false;
        } else {
            sb.append(", ");
        }
        sb.append(i);
    }

    @Override // defpackage.vc5
    public void d(fc5 fc5Var, boolean z) {
        o8 o8Var;
        o88 o88Var = (o88) this.b;
        if (this.a) {
            return;
        }
        this.a = true;
        ActionMenuView actionMenuView = o88Var.e.a.a;
        if (actionMenuView != null && (o8Var = actionMenuView.L) != null) {
            o8Var.b();
            g8 g8Var = o8Var.M;
            if (g8Var != null && g8Var.b()) {
                g8Var.j.dismiss();
            }
        }
        o88Var.f.onPanelClosed(108, fc5Var);
        this.a = false;
    }

    @Override // defpackage.vc5
    public boolean r(fc5 fc5Var) {
        ((o88) this.b).f.onMenuOpened(108, fc5Var);
        return true;
    }

    public rc6(o88 o88Var) {
        this.b = o88Var;
    }
}
