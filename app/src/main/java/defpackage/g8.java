package defpackage;

import android.content.Context;
import android.view.View;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g8 extends qc5 {
    public final /* synthetic */ o8 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g8(o8 o8Var, Context context, lr7 lr7Var, View view) {
        super(R.attr.actionOverflowMenuStyle, 0, lr7Var, context, view, false);
        this.m = o8Var;
        if ((lr7Var.T.P & 32) != 32) {
            View view2 = o8Var.q;
            this.f = view2 == null ? (View) o8Var.n : view2;
        }
        km8 km8Var = o8Var.P;
        this.i = km8Var;
        oc5 oc5Var = this.j;
        if (oc5Var != null) {
            oc5Var.i(km8Var);
        }
    }

    @Override // defpackage.qc5
    public final void c() {
        o8 o8Var = this.m;
        o8Var.M = null;
        o8Var.Q = 0;
        super.c();
    }
}
