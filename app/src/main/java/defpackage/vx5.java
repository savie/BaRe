package defpackage;

import android.content.Context;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vx5 {
    public final il0 a;
    public final e38 b;
    public final MaterialCardView c;
    public final TextView d;
    public final TextView e;
    public final MaterialButton f;

    public vx5(il0 il0Var, e38 e38Var) {
        this.a = il0Var;
        this.b = e38Var;
        this.c = (MaterialCardView) e38Var.b;
        this.d = (TextView) e38Var.e;
        this.e = (TextView) e38Var.d;
        this.f = (MaterialButton) e38Var.c;
    }

    public final void a(ux5 ux5Var, boolean z, mt3 mt3Var, ox oxVar) {
        int i;
        int i2;
        ux5Var.getClass();
        int i3 = z ? R.dimen.card_stroke_width_selected : R.dimen.card_stroke_width;
        MaterialCardView materialCardView = this.c;
        materialCardView.setStrokeWidth(tu0.v(materialCardView.getContext().getResources().getDimension(i3)));
        int i4 = z ? R.attr.colorPrimary : R.attr.cardStrokeColor;
        Context context = materialCardView.getContext();
        context.getClass();
        materialCardView.setStrokeColor(context.getColor(sz8.y(context, i4)));
        TextView textView = this.d;
        Context context2 = textView.getContext();
        context2.getClass();
        textView.setTextColor(z ? sz8.x(context2) : sz8.z(context2));
        int[] iArr = xx5.a;
        int i5 = iArr[ux5Var.ordinal()];
        if (i5 == 1) {
            i = R.string.password_strategy_standard_title;
        } else {
            if (i5 != 2) {
                q.j();
                return;
            }
            i = R.string.password_strategy_user_password_title;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(i);
        string.getClass();
        textView.setText(string);
        int i6 = iArr[ux5Var.ordinal()];
        if (i6 == 1) {
            i2 = R.string.password_strategy_standard_description;
        } else {
            if (i6 != 2) {
                q.j();
                return;
            }
            i2 = R.string.password_strategy_user_password_description;
        }
        this.e.setText(new f75(this.a, 62).e.e(el1.Y0(nq7.x0(dj7.g(i2), new String[]{"\n"}, 6), "\n\n", "\n\n", null, null, 60)));
        boolean z2 = ux5Var == ux5.USER_PASSWORD;
        MaterialButton materialButton = this.f;
        sz8.d0(materialButton, z2);
        if (sz8.I(materialButton)) {
            materialButton.setEnabled(z);
            materialButton.setAlpha(z ? 1.0f : 0.6f);
            String string2 = materialButton.getContext().getString(R.string.set_user_password);
            string2.getClass();
            materialButton.setText(string2);
            materialButton.setOnClickListener(oxVar != null ? new of(oxVar, 8) : null);
        }
        ((MaterialCardView) this.b.b).setOnClickListener(new m51(5, mt3Var, ux5Var));
    }
}
