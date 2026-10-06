package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xq1 extends kx4 {
    public final SwiftListItemCardView v;
    public final TextView w;
    public final TextView x;
    public final /* synthetic */ yq1 y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xq1(yq1 yq1Var, View view) {
        super(view);
        this.y = yq1Var;
        int i = R.id.content_container;
        if (((ConstraintLayout) ms8.u(view, R.id.content_container)) != null) {
            i = R.id.item_card;
            SwiftListItemCardView swiftListItemCardView = (SwiftListItemCardView) ms8.u(view, R.id.item_card);
            if (swiftListItemCardView != null) {
                i = R.id.tv_subtitle2;
                TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle2);
                if (textView != null) {
                    i = R.id.tv_title;
                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                    if (textView2 != null) {
                        this.v = swiftListItemCardView;
                        this.w = textView2;
                        this.x = textView;
                        return;
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        throw null;
    }
}
