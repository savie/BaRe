package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q10 extends fh6 {
    public final ImageView u;
    public final TextView v;
    public final TextView w;
    public final ImageView x;
    public final View y;
    public final /* synthetic */ r10 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q10(r10 r10Var, View view) {
        super(view);
        this.z = r10Var;
        int i = R.id.divider;
        View viewU = ms8.u(view, R.id.divider);
        if (viewU != null) {
            i = R.id.iv_icon;
            ImageView imageView = (ImageView) ms8.u(view, R.id.iv_icon);
            if (imageView != null) {
                i = R.id.iv_root_needed;
                ImageView imageView2 = (ImageView) ms8.u(view, R.id.iv_root_needed);
                if (imageView2 != null) {
                    i = R.id.tv_subtitle1;
                    TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle1);
                    if (textView != null) {
                        i = R.id.tv_title;
                        TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                        if (textView2 != null) {
                            this.u = imageView;
                            this.v = textView2;
                            this.w = textView;
                            this.x = imageView2;
                            this.y = viewU;
                            return;
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        throw null;
    }
}
