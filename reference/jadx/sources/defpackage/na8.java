package defpackage;

import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class na8 extends fh6 {
    public final TextView u;
    public final TextView v;
    public final TextView w;

    public na8(jk8 jk8Var, TextView textView, TextView textView2, TextView textView3) {
        super(jk8Var.getRoot());
        this.u = textView;
        this.v = textView2;
        this.w = textView3;
    }

    public final void r(ma8 ma8Var) {
        ma8Var.getClass();
        is4 is4Var = ma8Var.a;
        Object value = is4Var.p.getValue();
        value.getClass();
        this.u.setText((String) value);
        Object value2 = is4Var.q.getValue();
        value2.getClass();
        this.v.setText((String) value2);
        this.w.setText(el1.Y0(ma8Var.b, "\n", null, null, new sl(9), 30));
    }
}
