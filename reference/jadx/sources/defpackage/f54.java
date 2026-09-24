package defpackage;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class f54 extends g54 {
    public final t54 u;
    public final /* synthetic */ h54 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f54(h54 h54Var, t54 t54Var) {
        super((ConstraintLayout) t54Var.a);
        this.v = h54Var;
        this.u = t54Var;
    }

    @Override // defpackage.g54
    public final void r(s54 s54Var, int i) {
        s54Var.getClass();
        t54 t54Var = this.u;
        ImageView imageView = (ImageView) t54Var.c;
        h54 h54Var = this.v;
        h54.y(h54Var, imageView, s54Var);
        ((TextView) t54Var.e).setText(s54Var.c);
        TextView textView = (TextView) t54Var.d;
        String str = s54Var.d;
        int i2 = 1;
        sz8.d0(textView, !(str == null || str.length() == 0));
        textView.setText(str);
        ((ConstraintLayout) t54Var.b).setOnClickListener(new vc3(h54Var, s54Var, i, i2));
    }
}
