package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.listitem.ListItemLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bd6 extends cd6 {
    public final yf1 v;
    public final /* synthetic */ dd6 w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bd6(dd6 dd6Var, View view) {
        super(view);
        this.w = dd6Var;
        ListItemLayout listItemLayout = (ListItemLayout) view;
        int i = R.id.content_container;
        if (((ConstraintLayout) ms8.u(view, R.id.content_container)) != null) {
            i = R.id.item_card;
            SwiftListItemCardView swiftListItemCardView = (SwiftListItemCardView) ms8.u(view, R.id.item_card);
            if (swiftListItemCardView != null) {
                i = R.id.iv_arrow;
                if (((ImageView) ms8.u(view, R.id.iv_arrow)) != null) {
                    i = R.id.tv_title;
                    if (((TextView) ms8.u(view, R.id.tv_title)) != null) {
                        this.v = new yf1(8, listItemLayout, swiftListItemCardView);
                        return;
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        throw null;
    }

    @Override // defpackage.cd6
    public final void s(zc6 zc6Var, int i) {
        zc6Var.getClass();
        ((SwiftListItemCardView) this.v.c).setOnClickListener(new h7(this.w, 12));
    }
}
