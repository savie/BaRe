package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xc6 implements jk8 {
    public final ConstraintLayout a;
    public final ImageView b;
    public final QuickRecyclerView c;
    public final TextView d;
    public final TextView e;

    public xc6(ConstraintLayout constraintLayout, ImageView imageView, QuickRecyclerView quickRecyclerView, TextView textView, TextView textView2) {
        this.a = constraintLayout;
        this.b = imageView;
        this.c = quickRecyclerView;
        this.d = textView;
        this.e = textView2;
    }

    public static xc6 a(View view) {
        int i = R.id.iv_icon;
        ImageView imageView = (ImageView) ms8.u(view, R.id.iv_icon);
        if (imageView != null) {
            i = R.id.rv_quick_actions;
            QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(view, R.id.rv_quick_actions);
            if (quickRecyclerView != null) {
                i = R.id.tv_card_title;
                TextView textView = (TextView) ms8.u(view, R.id.tv_card_title);
                if (textView != null) {
                    i = R.id.tv_root_needed;
                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_root_needed);
                    if (textView2 != null) {
                        return new xc6((ConstraintLayout) view, imageView, quickRecyclerView, textView, textView2);
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
