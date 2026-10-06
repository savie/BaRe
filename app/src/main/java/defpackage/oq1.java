package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oq1 extends fh6 {
    public final /* synthetic */ pq1 A;
    public final yf1 u;
    public final TextView v;
    public final ImageView w;
    public final ImageView x;
    public final TextView y;
    public final MaterialCardView z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oq1(pq1 pq1Var, View view) {
        super(view);
        this.A = pq1Var;
        int i = R.id.click_listener;
        MaterialCardView materialCardView = (MaterialCardView) ms8.u(view, R.id.click_listener);
        if (materialCardView != null) {
            i = R.id.config_settings_view;
            View viewU = ms8.u(view, R.id.config_settings_view);
            if (viewU != null) {
                ny1 ny1VarA = ny1.a(viewU);
                i = R.id.container_settings_id;
                if (((LinearLayout) ms8.u(view, R.id.container_settings_id)) != null) {
                    i = R.id.cv;
                    if (((MaterialCardView) ms8.u(view, R.id.cv)) != null) {
                        i = R.id.iv_down;
                        ImageView imageView = (ImageView) ms8.u(view, R.id.iv_down);
                        if (imageView != null) {
                            i = R.id.iv_up;
                            ImageView imageView2 = (ImageView) ms8.u(view, R.id.iv_up);
                            if (imageView2 != null) {
                                i = R.id.tv_apply_to_title;
                                if (((TextView) ms8.u(view, R.id.tv_apply_to_title)) != null) {
                                    i = R.id.tv_settings_id;
                                    TextView textView = (TextView) ms8.u(view, R.id.tv_settings_id);
                                    if (textView != null) {
                                        i = R.id.tv_settings_subtitle;
                                        TextView textView2 = (TextView) ms8.u(view, R.id.tv_settings_subtitle);
                                        if (textView2 != null) {
                                            i = R.id.tv_settings_title;
                                            if (((TextView) ms8.u(view, R.id.tv_settings_title)) != null) {
                                                this.u = new yf1((ConstraintLayout) view, materialCardView, ny1VarA, imageView, imageView2, textView, textView2);
                                                this.v = textView;
                                                this.w = imageView2;
                                                this.x = imageView;
                                                this.y = textView2;
                                                this.z = materialCardView;
                                                return;
                                            }
                                        }
                                    }
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
