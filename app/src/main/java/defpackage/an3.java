package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class an3 extends gm7 {
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        zm3 zm3Var = (zm3) fh6Var;
        bn3 bn3Var = (bn3) m(i);
        TextView textView = zm3Var.y;
        bn3Var.getClass();
        boolean z = bn3Var.b;
        ImageView imageView = zm3Var.w;
        boolean z2 = bn3Var.d;
        imageView.setImageResource(z2 ? R.drawable.ic_folder : R.drawable.ic_article);
        zm3Var.x.setText(bn3Var.k);
        if (z2) {
            textView.setText("Not supported");
            sz8.d0(textView, !z);
        } else {
            sz8.W(textView);
        }
        ((ConstraintLayout) zm3Var.u.c).setAlpha(z ? 1.0f : 0.5f);
        ConstraintLayout constraintLayout = zm3Var.v;
        if (z) {
            constraintLayout.setOnClickListener(new ti(zm3Var.z, i, 2, bn3Var));
        } else {
            constraintLayout.setOnClickListener(null);
        }
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.folder_picker_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        int i2 = R.id.container;
        ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(view, R.id.container);
        if (constraintLayout != null) {
            i2 = R.id.iv_chevron;
            if (((ImageView) ms8.u(view, R.id.iv_chevron)) != null) {
                i2 = R.id.iv_icon;
                ImageView imageView = (ImageView) ms8.u(view, R.id.iv_icon);
                if (imageView != null) {
                    i2 = R.id.tv_subtitle1;
                    TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle1);
                    if (textView != null) {
                        i2 = R.id.tv_title;
                        TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                        if (textView2 != null) {
                            return new zm3(this, new tf2((LinearLayout) view, constraintLayout, imageView, textView, textView2, 1));
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
