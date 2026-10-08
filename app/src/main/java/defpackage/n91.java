package defpackage;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n91 implements View.OnFocusChangeListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ qw2 b;

    public /* synthetic */ n91(qw2 qw2Var, int i) {
        this.a = i;
        this.b = qw2Var;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        int i = this.a;
        qw2 qw2Var = this.b;
        switch (i) {
            case 0:
                r91 r91Var = (r91) qw2Var;
                r91Var.s(r91Var.t());
                break;
            default:
                lr2 lr2Var = (lr2) qw2Var;
                lr2Var.l = z;
                lr2Var.p();
                if (!z) {
                    lr2Var.s(false);
                    lr2Var.m = false;
                }
                break;
        }
    }
}
