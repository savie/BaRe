package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class t00 extends gm7 {
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        r00 r00Var = (r00) m(i);
        r00Var.getClass();
        u00 u00Var = ((s00) fh6Var).u;
        ((TextView) u00Var.c).setText(r00Var.a);
        ((TextView) u00Var.d).setText(r00Var.b);
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.app_visibility_package_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        int i2 = R.id.tv_app_label;
        TextView textView = (TextView) ms8.u(view, R.id.tv_app_label);
        if (textView != null) {
            i2 = R.id.tv_package_name;
            TextView textView2 = (TextView) ms8.u(view, R.id.tv_package_name);
            if (textView2 != null) {
                return new s00(new u00(0, (ConstraintLayout) view, textView, textView2));
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
