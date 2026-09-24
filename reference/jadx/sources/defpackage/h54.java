package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class h54 extends gm7 {
    public final qt3 l;

    public h54() {
        a54 a54Var = new a54(2, tr.n0, qr.class, "renderAppIcon", "renderAppIcon(Landroid/widget/ImageView;Lorg/swiftapps/swiftbackup/model/app/App;)V", 0);
        super(null);
        this.l = a54Var;
    }

    public static final void y(h54 h54Var, ImageView imageView, s54 s54Var) {
        ColorStateList colorStateListH0;
        imageView.setAlpha(1.0f);
        imageView.setImageResource(s54Var.e);
        if (s54Var.k) {
            Context context = imageView.getContext();
            context.getClass();
            colorStateListH0 = sz8.h0(io4.d(context, R.attr.colorPrimary));
        } else {
            colorStateListH0 = null;
        }
        imageView.setImageTintList(colorStateListH0);
    }

    @Override // defpackage.hg6
    public final int d(int i) {
        s54 s54Var = (s54) m(i);
        if (s54Var.n != null) {
            return 1;
        }
        return s54Var.p != null ? 2 : 0;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        ((g54) fh6Var).r((s54) m(i), i);
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        if (i != 1) {
            return i != 2 ? R.layout.home_search_result_item : R.layout.home_search_folder_result_item;
        }
        return R.layout.home_search_app_result_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        int i2 = R.id.tv_title;
        if (i == 1) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            ImageView imageView = (ImageView) ms8.u(view, R.id.iv_icon);
            if (imageView != null) {
                TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle);
                if (textView != null) {
                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                    if (textView2 != null) {
                        return new c54(this, new l90(constraintLayout, constraintLayout, imageView, textView, textView2, 2));
                    }
                } else {
                    i2 = R.id.tv_subtitle;
                }
            } else {
                i2 = R.id.iv_icon;
            }
            f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
            return null;
        }
        if (i == 2) {
            ConstraintLayout constraintLayout2 = (ConstraintLayout) view;
            ImageView imageView2 = (ImageView) ms8.u(view, R.id.iv_icon);
            if (imageView2 != null) {
                TextView textView3 = (TextView) ms8.u(view, R.id.tv_subtitle);
                if (textView3 != null) {
                    TextView textView4 = (TextView) ms8.u(view, R.id.tv_title);
                    if (textView4 != null) {
                        return new e54(this, new xp3(constraintLayout2, constraintLayout2, imageView2, textView3, textView4, 1));
                    }
                } else {
                    i2 = R.id.tv_subtitle;
                }
            } else {
                i2 = R.id.iv_icon;
            }
            f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
            return null;
        }
        ConstraintLayout constraintLayout3 = (ConstraintLayout) view;
        ImageView imageView3 = (ImageView) ms8.u(view, R.id.iv_icon);
        if (imageView3 != null) {
            TextView textView5 = (TextView) ms8.u(view, R.id.tv_subtitle);
            if (textView5 != null) {
                TextView textView6 = (TextView) ms8.u(view, R.id.tv_title);
                if (textView6 != null) {
                    t54 t54Var = new t54();
                    t54Var.a = constraintLayout3;
                    t54Var.b = constraintLayout3;
                    t54Var.c = imageView3;
                    t54Var.d = textView5;
                    t54Var.e = textView6;
                    return new f54(this, t54Var);
                }
            } else {
                i2 = R.id.tv_subtitle;
            }
        } else {
            i2 = R.id.iv_icon;
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
