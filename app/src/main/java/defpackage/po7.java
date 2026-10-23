package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class po7 extends fh6 {
    public final TextView A;
    public final TextView B;
    public final MaterialCardView C;
    public final LinearProgressIndicator D;
    public final /* synthetic */ qo7 E;
    public final ib u;
    public final MaterialCardView v;
    public final ImageView w;
    public final TextView x;
    public final TextView y;
    public final TextView z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public po7(qo7 qo7Var, View view) {
        super(view);
        this.E = qo7Var;
        int i = R.id.exfat_tip_container;
        MaterialCardView materialCardView = (MaterialCardView) ms8.u(view, R.id.exfat_tip_container);
        if (materialCardView != null) {
            i = R.id.iv_icon;
            ImageView imageView = (ImageView) ms8.u(view, R.id.iv_icon);
            if (imageView != null) {
                i = R.id.progress;
                LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) ms8.u(view, R.id.progress);
                if (linearProgressIndicator != null) {
                    i = R.id.tv_exfat_tip;
                    TextView textView = (TextView) ms8.u(view, R.id.tv_exfat_tip);
                    if (textView != null) {
                        i = R.id.tv_folder;
                        TextView textView2 = (TextView) ms8.u(view, R.id.tv_folder);
                        if (textView2 != null) {
                            i = R.id.tv_folder_header;
                            TextView textView3 = (TextView) ms8.u(view, R.id.tv_folder_header);
                            if (textView3 != null) {
                                i = R.id.tv_header;
                                TextView textView4 = (TextView) ms8.u(view, R.id.tv_header);
                                if (textView4 != null) {
                                    i = R.id.tv_subtitle1;
                                    TextView textView5 = (TextView) ms8.u(view, R.id.tv_subtitle1);
                                    if (textView5 != null) {
                                        i = R.id.tv_title;
                                        TextView textView6 = (TextView) ms8.u(view, R.id.tv_title);
                                        if (textView6 != null) {
                                            MaterialCardView materialCardView2 = (MaterialCardView) view;
                                            this.u = new ib(materialCardView2, materialCardView, imageView, linearProgressIndicator, textView, textView2, textView3, textView4, textView5, textView6);
                                            this.v = materialCardView2;
                                            this.w = imageView;
                                            this.x = textView4;
                                            this.y = textView6;
                                            this.z = textView5;
                                            this.A = textView3;
                                            this.B = textView2;
                                            this.C = materialCardView;
                                            this.D = linearProgressIndicator;
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
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        throw null;
    }
}
