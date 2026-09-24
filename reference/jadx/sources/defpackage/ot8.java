package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ot8 extends r35 {
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        nt8 nt8Var = (nt8) fh6Var;
        pt8 pt8Var = (pt8) this.d.get(i);
        pt8Var.getClass();
        nt8Var.u.setText(pt8Var.a);
        nt8Var.v.setText(pt8Var.b);
        ImageView imageView = nt8Var.w;
        imageView.setVisibility(pt8Var.c ? 0 : 4);
        if (sz8.I(imageView)) {
            imageView.setOnClickListener(new es(nt8Var, pt8Var));
        }
    }

    @Override // defpackage.r35
    public final int k(int i) {
        return R.layout.wifi_show_item;
    }

    @Override // defpackage.r35
    public final fh6 l(View view, int i) {
        int i2 = R.id.divider;
        if (ms8.u(view, R.id.divider) != null) {
            i2 = R.id.iv_copy;
            ImageView imageView = (ImageView) ms8.u(view, R.id.iv_copy);
            if (imageView != null) {
                i2 = R.id.tv_subtitle;
                TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle);
                if (textView != null) {
                    i2 = R.id.tv_title;
                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                    if (textView2 != null) {
                        return new nt8(new kc((ConstraintLayout) view, imageView, textView, textView2, 6));
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
