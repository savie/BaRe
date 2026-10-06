package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h30 extends fh6 {
    public final ImageView u;
    public final TextView v;
    public final TextView w;
    public final View x;
    public final /* synthetic */ i30 y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h30(i30 i30Var, View view) {
        super(view);
        this.y = i30Var;
        int i = R.id.divider;
        View viewU = ms8.u(view, R.id.divider);
        if (viewU != null) {
            i = R.id.iv_icon;
            ImageView imageView = (ImageView) ms8.u(view, R.id.iv_icon);
            if (imageView != null) {
                i = R.id.tv_root_needed;
                TextView textView = (TextView) ms8.u(view, R.id.tv_root_needed);
                if (textView != null) {
                    i = R.id.tv_subtitle1;
                    if (((TextView) ms8.u(view, R.id.tv_subtitle1)) != null) {
                        i = R.id.tv_title;
                        TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                        if (textView2 != null) {
                            this.u = imageView;
                            this.v = textView2;
                            this.w = textView;
                            this.x = viewU;
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
