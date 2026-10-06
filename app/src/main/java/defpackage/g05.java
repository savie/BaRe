package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class g05 extends gm7 {
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        int iZ;
        f05 f05Var = (f05) fh6Var;
        is4 is4Var = (is4) m(i);
        is4Var.getClass();
        g05 g05Var = f05Var.y;
        boolean zQ = g05Var.q(is4Var);
        RadioButton radioButton = f05Var.u;
        radioButton.setClickable(false);
        radioButton.setChecked(zQ);
        TextView textView = f05Var.v;
        Object value = is4Var.p.getValue();
        value.getClass();
        textView.setText((String) value);
        if (zQ) {
            Context context = textView.getContext();
            context.getClass();
            iZ = sz8.x(context);
        } else {
            Context context2 = textView.getContext();
            context2.getClass();
            iZ = sz8.z(context2);
        }
        textView.setTextColor(iZ);
        TextView textView2 = f05Var.w;
        Object value2 = is4Var.q.getValue();
        value2.getClass();
        String str = (String) value2;
        sz8.d0(textView2, !(str.length() == 0));
        if (sz8.I(textView2)) {
            textView2.setText(str);
        }
        TextView textView3 = f05Var.x;
        ArrayList arrayList = new ArrayList();
        xi6 xi6Var = is4Var.e;
        if (xi6Var != xi6.Production) {
            arrayList.add(xi6Var.getDisplayString());
        }
        double d = is4Var.d;
        if (d < 100.0d) {
            arrayList.add(d + "%");
        }
        sz8.d0(textView3, !arrayList.isEmpty());
        if (sz8.I(textView3)) {
            textView3.setText(el1.Y0(arrayList, " • ", null, null, null, 62));
        }
        f05Var.a.setOnClickListener(new vc3(g05Var, is4Var, i, 2));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.locale_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        int i2 = R.id.rb;
        RadioButton radioButton = (RadioButton) ms8.u(view, R.id.rb);
        if (radioButton != null) {
            i2 = R.id.tv_beta_indicator;
            TextView textView = (TextView) ms8.u(view, R.id.tv_beta_indicator);
            if (textView != null) {
                i2 = R.id.tv_subtitle;
                TextView textView2 = (TextView) ms8.u(view, R.id.tv_subtitle);
                if (textView2 != null) {
                    i2 = R.id.tv_title;
                    TextView textView3 = (TextView) ms8.u(view, R.id.tv_title);
                    if (textView3 != null) {
                        return new f05(this, new l90((ConstraintLayout) view, radioButton, textView, textView2, textView3, 3));
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
