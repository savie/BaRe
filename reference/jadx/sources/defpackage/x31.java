package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x31 extends y31 {
    public final MaterialCardView u;
    public final MaterialButton v;
    public final TextView w;

    public x31(f41 f41Var) {
        super((LinearLayout) f41Var.a);
        this.u = (MaterialCardView) f41Var.b;
        this.v = (MaterialButton) f41Var.d;
        this.w = (TextView) f41Var.c;
    }

    @Override // defpackage.y31
    public final void r(d41 d41Var) {
        int color;
        d41Var.getClass();
        String str = d41Var.e;
        String str2 = d41Var.a;
        boolean Z = nq7.Z(str2, "alpha", true);
        View view = this.a;
        if (Z || nq7.Z(str2, "beta", true)) {
            Context context = view.getContext();
            context.getClass();
            color = context.getColor(R.color.ambrdark);
        } else {
            Context context2 = view.getContext();
            context2.getClass();
            color = sz8.x(context2);
        }
        Context context3 = view.getContext();
        context3.getClass();
        this.u.setCardBackgroundColor(xl1.b(0.08f, context3.getColor(sz8.y(context3, R.attr.colorSurfaceContainerHigh)), color));
        MaterialButton materialButton = this.v;
        materialButton.setText(str2);
        materialButton.setBackgroundTintList(sz8.h0(sz8.U(color, 20)));
        materialButton.setTextColor(color);
        TextView textView = this.w;
        textView.setText(str);
        sz8.d0(textView, !(str == null || nq7.j0(str)));
    }
}
