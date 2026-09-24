package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wm6 extends hg6 {
    public final List d;

    public wm6(List list) {
        this.d = list;
    }

    @Override // defpackage.hg6
    public final int b() {
        return this.d.size();
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        um6 um6Var = (um6) this.d.get(i);
        um6Var.getClass();
        ai5 ai5Var = ((vm6) fh6Var).u;
        ((ImageView) ai5Var.c).setImageResource(um6Var.a);
        ((TextView) ai5Var.e).setText(um6Var.b);
        ((TextView) ai5Var.d).setText(um6Var.c);
    }

    @Override // defpackage.hg6
    public final fh6 j(ViewGroup viewGroup, int i) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.restore_special_data_detail_item, viewGroup, false);
        int i2 = R.id.iv_icon;
        ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.iv_icon);
        if (imageView != null) {
            i2 = R.id.tv_subtitle;
            TextView textView = (TextView) ms8.u(viewInflate, R.id.tv_subtitle);
            if (textView != null) {
                i2 = R.id.tv_title;
                TextView textView2 = (TextView) ms8.u(viewInflate, R.id.tv_title);
                if (textView2 != null) {
                    return new vm6(new ai5((ConstraintLayout) viewInflate, imageView, textView, textView2, 4));
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
        return null;
    }
}
