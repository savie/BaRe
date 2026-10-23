package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pa8 extends u35 {
    public final gv7 Q;
    public final gv7 R;
    public final gv7 S;
    public final gv7 T;

    public pa8(k28 k28Var) {
        View viewInflate = View.inflate(k28Var, R.layout.translation_credits_dialog, null);
        int i = R.id.btn_close;
        ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.btn_close);
        if (imageView != null) {
            i = R.id.divider;
            if (ms8.u(viewInflate, R.id.divider) != null) {
                i = R.id.highlighted_credit_item;
                View viewU = ms8.u(viewInflate, R.id.highlighted_credit_item);
                if (viewU != null) {
                    int i2 = R.id.tv_subtitle;
                    TextView textView = (TextView) ms8.u(viewU, R.id.tv_subtitle);
                    if (textView != null) {
                        i2 = R.id.tv_title;
                        TextView textView2 = (TextView) ms8.u(viewU, R.id.tv_title);
                        if (textView2 != null) {
                            i2 = R.id.tv_translators;
                            TextView textView3 = (TextView) ms8.u(viewU, R.id.tv_translators);
                            if (textView3 != null) {
                                ra8 ra8Var = new ra8((MaterialCardView) viewU, textView, textView2, textView3);
                                i = R.id.rv_credits;
                                QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_credits);
                                if (quickRecyclerView != null) {
                                    i = R.id.sv;
                                    NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate, R.id.sv);
                                    if (nestedScrollView != null) {
                                        super(k28Var, new qa8((CoordinatorLayout) viewInflate, imageView, ra8Var, quickRecyclerView, nestedScrollView), 12);
                                        this.Q = new gv7(new us5(this, 9));
                                        this.R = new gv7(new no5(this, 8));
                                        this.S = new gv7(new qb5(this, 10));
                                        this.T = new gv7(new n55(this, 11));
                                        return;
                                    }
                                }
                            }
                        }
                    }
                    f6.n("Missing required view with ID: ".concat(viewU.getResources().getResourceName(i2)));
                    throw null;
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        throw null;
    }
}
