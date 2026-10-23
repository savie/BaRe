package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jl3 implements jk8 {
    public final MaterialCardView a;
    public final MaterialButton b;
    public final lj3 c;
    public final lj3 d;
    public final zx2 e;
    public final ImageView f;
    public final ConstraintLayout k;
    public final CircularProgressIndicator n;
    public final TextView p;
    public final TextView q;

    public jl3(MaterialCardView materialCardView, MaterialButton materialButton, lj3 lj3Var, lj3 lj3Var2, zx2 zx2Var, ImageView imageView, ConstraintLayout constraintLayout, CircularProgressIndicator circularProgressIndicator, TextView textView, TextView textView2) {
        this.a = materialCardView;
        this.b = materialButton;
        this.c = lj3Var;
        this.d = lj3Var2;
        this.e = zx2Var;
        this.f = imageView;
        this.k = constraintLayout;
        this.n = circularProgressIndicator;
        this.p = textView;
        this.q = textView2;
    }

    public static jl3 a(View view) {
        int i = R.id.btn_restore;
        MaterialButton materialButton = (MaterialButton) ms8.u(view, R.id.btn_restore);
        if (materialButton != null) {
            i = R.id.cv_base_backup;
            View viewU = ms8.u(view, R.id.cv_base_backup);
            if (viewU != null) {
                lj3 lj3VarA = lj3.a(viewU);
                i = R.id.cv_inc_backup;
                View viewU2 = ms8.u(view, R.id.cv_inc_backup);
                if (viewU2 != null) {
                    lj3 lj3VarA2 = lj3.a(viewU2);
                    i = R.id.divider;
                    if (ms8.u(view, R.id.divider) != null) {
                        i = R.id.error_layout;
                        View viewU3 = ms8.u(view, R.id.error_layout);
                        if (viewU3 != null) {
                            zx2 zx2VarA = zx2.a(viewU3);
                            i = R.id.iv_menu;
                            ImageView imageView = (ImageView) ms8.u(view, R.id.iv_menu);
                            if (imageView != null) {
                                i = R.id.main_view;
                                ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(view, R.id.main_view);
                                if (constraintLayout != null) {
                                    i = R.id.progress_bar;
                                    CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ms8.u(view, R.id.progress_bar);
                                    if (circularProgressIndicator != null) {
                                        i = R.id.tv_info;
                                        TextView textView = (TextView) ms8.u(view, R.id.tv_info);
                                        if (textView != null) {
                                            i = R.id.tv_title;
                                            TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                                            if (textView2 != null) {
                                                return new jl3((MaterialCardView) view, materialButton, lj3VarA, lj3VarA2, zx2VarA, imageView, constraintLayout, circularProgressIndicator, textView, textView2);
                                            }
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
