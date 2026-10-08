package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ip2 extends fh6 {
    public final ca3 u;
    public final /* synthetic */ id2 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ip2(id2 id2Var, View view) {
        super(view);
        this.v = id2Var;
        int i = R.id.click_listener;
        ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(view, R.id.click_listener);
        if (constraintLayout != null) {
            i = R.id.divider;
            View viewU = ms8.u(view, R.id.divider);
            if (viewU != null) {
                i = R.id.ivIcon;
                ImageView imageView = (ImageView) ms8.u(view, R.id.ivIcon);
                if (imageView != null) {
                    i = R.id.tvSubtitle;
                    TextView textView = (TextView) ms8.u(view, R.id.tvSubtitle);
                    if (textView != null) {
                        i = R.id.tvSubtitle2;
                        TextView textView2 = (TextView) ms8.u(view, R.id.tvSubtitle2);
                        if (textView2 != null) {
                            i = R.id.tvSubtitle2Container;
                            if (((MaterialCardView) ms8.u(view, R.id.tvSubtitle2Container)) != null) {
                                i = R.id.tvTitle;
                                TextView textView3 = (TextView) ms8.u(view, R.id.tvTitle);
                                if (textView3 != null) {
                                    this.u = new ca3((LinearLayout) view, constraintLayout, viewU, imageView, textView, textView2, textView3);
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        throw null;
    }
}
