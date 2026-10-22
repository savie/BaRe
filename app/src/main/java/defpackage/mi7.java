package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.listitem.ListItemLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.MCheckBox;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mi7 implements jk8 {
    public final ListItemLayout a;
    public final MCheckBox b;
    public final ImageView c;
    public final SwiftListItemCardView d;
    public final ImageView e;
    public final TextView f;
    public final TextView k;
    public final TextView n;

    public mi7(ListItemLayout listItemLayout, MCheckBox mCheckBox, ImageView imageView, SwiftListItemCardView swiftListItemCardView, ImageView imageView2, TextView textView, TextView textView2, TextView textView3) {
        this.a = listItemLayout;
        this.b = mCheckBox;
        this.c = imageView;
        this.d = swiftListItemCardView;
        this.e = imageView2;
        this.f = textView;
        this.k = textView2;
        this.n = textView3;
    }

    public static mi7 a(View view) {
        int i = R.id.cb;
        MCheckBox mCheckBox = (MCheckBox) ms8.u(view, R.id.cb);
        if (mCheckBox != null) {
            ListItemLayout listItemLayout = (ListItemLayout) view;
            i = R.id.content_container;
            if (((ConstraintLayout) ms8.u(view, R.id.content_container)) != null) {
                i = R.id.image_icon;
                ImageView imageView = (ImageView) ms8.u(view, R.id.image_icon);
                if (imageView != null) {
                    i = R.id.item_card;
                    SwiftListItemCardView swiftListItemCardView = (SwiftListItemCardView) ms8.u(view, R.id.item_card);
                    if (swiftListItemCardView != null) {
                        i = R.id.iv_call_status;
                        ImageView imageView2 = (ImageView) ms8.u(view, R.id.iv_call_status);
                        if (imageView2 != null) {
                            i = R.id.iv_fake;
                            if (((ImageView) ms8.u(view, R.id.iv_fake)) != null) {
                                i = R.id.tv_subtitle1;
                                TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle1);
                                if (textView != null) {
                                    i = R.id.tv_subtitle2;
                                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_subtitle2);
                                    if (textView2 != null) {
                                        i = R.id.tv_title;
                                        TextView textView3 = (TextView) ms8.u(view, R.id.tv_title);
                                        if (textView3 != null) {
                                            return new mi7(listItemLayout, mCheckBox, imageView, swiftListItemCardView, imageView2, textView, textView2, textView3);
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
        return null;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
