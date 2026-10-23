package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class tj2 extends gm7 {
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        sj2 sj2Var = (sj2) fh6Var;
        uj2 uj2Var = (uj2) m(i);
        uj2Var.getClass();
        sj2Var.u.setImageResource(uj2Var.a);
        sj2Var.v.setText(uj2Var.b);
        sj2Var.w.setText(uj2Var.c);
        sj2Var.a.setOnClickListener(new dj(uj2Var, 6));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.detail_chip;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        int i2 = R.id.iv_icon;
        ImageView imageView = (ImageView) ms8.u(view, R.id.iv_icon);
        if (imageView != null) {
            i2 = R.id.tv_subtitle;
            TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle);
            if (textView != null) {
                i2 = R.id.tv_title;
                TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                if (textView2 != null) {
                    return new sj2(new ai5((MaterialCardView) view, imageView, textView, textView2, 1));
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
