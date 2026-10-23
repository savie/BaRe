package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nk3 extends fh6 {
    public final cy6 u;
    public final /* synthetic */ ok3 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nk3(ok3 ok3Var, View view) {
        super(view);
        this.v = ok3Var;
        int i = R.id.divider;
        View viewU = ms8.u(view, R.id.divider);
        if (viewU != null) {
            i = R.id.iv_icon;
            ImageView imageView = (ImageView) ms8.u(view, R.id.iv_icon);
            if (imageView != null) {
                i = R.id.tv_subtitle1;
                TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle1);
                if (textView != null) {
                    i = R.id.tv_title;
                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                    if (textView2 != null) {
                        this.u = new cy6((LinearLayout) view, viewU, imageView, textView, textView2);
                        return;
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        throw null;
    }
}
