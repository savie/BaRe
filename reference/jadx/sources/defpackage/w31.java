package defpackage;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w31 extends y31 {
    public final TextView u;
    public final /* synthetic */ z31 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w31(z31 z31Var, cd cdVar) {
        super((LinearLayout) cdVar.b);
        this.v = z31Var;
        this.u = (TextView) cdVar.c;
    }

    @Override // defpackage.y31
    public final void r(d41 d41Var) {
        d41Var.getClass();
        String str = d41Var.a;
        TextView textView = this.u;
        textView.setText(str);
        if (!d41Var.c) {
            textView.setTextColor(((Number) this.v.h.getValue()).intValue());
            return;
        }
        Context context = textView.getContext();
        context.getClass();
        textView.setTextColor(sz8.x(context));
    }
}
