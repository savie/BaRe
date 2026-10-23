package defpackage;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ao3 {
    public final cp1 a;

    public ao3(cp1 cp1Var) {
        this.a = cp1Var;
    }

    public final void a(int i, int i2, boolean z, boolean z2, boolean z3, bt3 bt3Var) {
        int iU;
        cp1 cp1Var = this.a;
        MaterialCardView materialCardView = (MaterialCardView) cp1Var.b;
        materialCardView.setCardBackgroundColor(z ? materialCardView.getContext().getColor(R.color.color_primary_10) : 0);
        materialCardView.setStrokeWidth(tu0.v(materialCardView.getContext().getResources().getDimension(z ? R.dimen.card_stroke_width_selected : R.dimen.card_stroke_width)));
        if (z) {
            Context context = materialCardView.getContext();
            context.getClass();
            iU = sz8.x(context);
        } else {
            Context context2 = materialCardView.getContext();
            context2.getClass();
            iU = sz8.U(sz8.A(context2), 30);
        }
        materialCardView.setStrokeColor(iU);
        TextView textView = (TextView) cp1Var.e;
        Context context3 = textView.getContext();
        context3.getClass();
        textView.setTextColor(z ? sz8.x(context3) : sz8.z(context3));
        textView.setText(i);
        TextView textView2 = (TextView) cp1Var.d;
        textView2.setVisibility((z || z3) ? 0 : 8);
        textView2.setText(i2);
        ImageView imageView = (ImageView) cp1Var.c;
        imageView.setVisibility(z2 ? 0 : 8);
        imageView.setImageResource(R.drawable.ic_flash_circle);
        Context context4 = imageView.getContext();
        context4.getClass();
        imageView.setImageTintList(sz8.h0(io4.c(context4, context4.getColor(R.color.premium))));
        ((MaterialCardView) cp1Var.a).setOnClickListener(new xd1(bt3Var, 6));
    }
}
