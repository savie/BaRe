package defpackage;

import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.LocaleTextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gj7 extends fh6 {
    public final ConstraintLayout u;
    public final LocaleTextView v;
    public final ImageView w;
    public final ImageView x;
    public final /* synthetic */ hj7 y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gj7(hj7 hj7Var, View view) {
        super(view);
        this.y = hj7Var;
        int i = this.f;
        int i2 = hj7Var.m;
        int i3 = R.id.tv_sort_title;
        if (i == i2) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            ImageView imageView = (ImageView) ms8.u(view, R.id.iv_ascending_state);
            if (imageView == null) {
                i3 = R.id.iv_ascending_state;
            } else if (((ImageView) ms8.u(view, R.id.iv_background)) != null) {
                ImageView imageView2 = (ImageView) ms8.u(view, R.id.iv_sort);
                if (imageView2 != null) {
                    LocaleTextView localeTextView = (LocaleTextView) ms8.u(view, R.id.tv_sort_title);
                    if (localeTextView != null) {
                        this.u = constraintLayout;
                        this.v = localeTextView;
                        this.w = imageView2;
                        this.x = imageView;
                        return;
                    }
                } else {
                    i3 = R.id.iv_sort;
                }
            } else {
                i3 = R.id.iv_background;
            }
            f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i3)));
            throw null;
        }
        ConstraintLayout constraintLayout2 = (ConstraintLayout) view;
        ImageView imageView3 = (ImageView) ms8.u(view, R.id.iv_ascending_state);
        if (imageView3 == null) {
            i3 = R.id.iv_ascending_state;
        } else if (((ImageView) ms8.u(view, R.id.iv_background)) != null) {
            ImageView imageView4 = (ImageView) ms8.u(view, R.id.iv_sort);
            if (imageView4 != null) {
                LocaleTextView localeTextView2 = (LocaleTextView) ms8.u(view, R.id.tv_sort_title);
                if (localeTextView2 != null) {
                    this.u = constraintLayout2;
                    this.v = localeTextView2;
                    this.w = imageView4;
                    this.x = imageView3;
                    return;
                }
            } else {
                i3 = R.id.iv_sort;
            }
        } else {
            i3 = R.id.iv_background;
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i3)));
        throw null;
    }
}
