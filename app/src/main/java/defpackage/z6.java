package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class z6 extends kx4 {
    public final SwiftListItemCardView v;
    public final TextView w;
    public final ImageView x;
    public final /* synthetic */ a7 y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z6(a7 a7Var, View view) {
        super(view);
        this.y = a7Var;
        int i = R.id.item_card;
        SwiftListItemCardView swiftListItemCardView = (SwiftListItemCardView) ms8.u(view, R.id.item_card);
        if (swiftListItemCardView != null) {
            i = R.id.item_content;
            View viewU = ms8.u(view, R.id.item_content);
            if (viewU != null) {
                int i2 = R.id.iv_more_list_item;
                ImageView imageView = (ImageView) ms8.u(viewU, R.id.iv_more_list_item);
                if (imageView != null) {
                    i2 = R.id.tv_more_list_item;
                    TextView textView = (TextView) ms8.u(viewU, R.id.tv_more_list_item);
                    if (textView != null) {
                        this.v = swiftListItemCardView;
                        this.w = textView;
                        this.x = imageView;
                        return;
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewU.getResources().getResourceName(i2)));
                throw null;
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        throw null;
    }
}
