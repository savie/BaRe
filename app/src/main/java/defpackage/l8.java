package defpackage;

import android.content.Context;
import android.view.View;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l8 extends qc5 {
    public final /* synthetic */ o8 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l8(o8 o8Var, Context context, fc5 fc5Var, View view) {
        super(R.attr.actionOverflowMenuStyle, 0, fc5Var, context, view, true);
        this.m = o8Var;
        this.g = 8388613;
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
        fc5 fc5Var = o8Var.c;
        if (fc5Var != null) {
            fc5Var.c(true);
        }
        o8Var.L = null;
        super.c();
    }
}
