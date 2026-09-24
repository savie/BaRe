package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.listitem.ListItemLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zr0 extends kx4 {
    public final xd0 v;
    public final /* synthetic */ bs0 w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zr0(bs0 bs0Var, View view) {
        super(view);
        this.w = bs0Var;
        int i = R.id.btn_menu;
        ImageView imageView = (ImageView) ms8.u(view, R.id.btn_menu);
        if (imageView != null) {
            ListItemLayout listItemLayout = (ListItemLayout) view;
            int i2 = R.id.content;
            LinearLayout linearLayout = (LinearLayout) ms8.u(view, R.id.content);
            if (linearLayout != null) {
                i2 = R.id.content_container;
                if (((ConstraintLayout) ms8.u(view, R.id.content_container)) != null) {
                    i2 = R.id.indicator_hidden;
                    View viewU = ms8.u(view, R.id.indicator_hidden);
                    if (viewU != null) {
                        i2 = R.id.item_card;
                        SwiftListItemCardView swiftListItemCardView = (SwiftListItemCardView) ms8.u(view, R.id.item_card);
                        if (swiftListItemCardView != null) {
                            i2 = R.id.iv_icon;
                            ImageView imageView2 = (ImageView) ms8.u(view, R.id.iv_icon);
                            if (imageView2 != null) {
                                i2 = R.id.tv_subtitle1;
                                TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle1);
                                if (textView != null) {
                                    i2 = R.id.tv_subtitle2;
                                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_subtitle2);
                                    if (textView2 != null) {
                                        i2 = R.id.tv_title;
                                        TextView textView3 = (TextView) ms8.u(view, R.id.tv_title);
                                        if (textView3 != null) {
                                            xd0 xd0Var = new xd0();
                                            xd0Var.a = listItemLayout;
                                            xd0Var.b = imageView;
                                            xd0Var.c = linearLayout;
                                            xd0Var.d = viewU;
                                            xd0Var.e = swiftListItemCardView;
                                            xd0Var.f = imageView2;
                                            xd0Var.k = textView;
                                            xd0Var.n = textView2;
                                            xd0Var.p = textView3;
                                            this.v = xd0Var;
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            i = i2;
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        throw null;
    }
}
