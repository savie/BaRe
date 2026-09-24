package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ub5 implements jk8 {
    public final ConstraintLayout a;
    public final MaterialButton b;
    public final ImageView c;
    public final ImageView d;
    public final NestedScrollView e;
    public final d62 f;
    public final x00 k;
    public final TextView n;

    public ub5(ConstraintLayout constraintLayout, MaterialButton materialButton, ImageView imageView, ImageView imageView2, NestedScrollView nestedScrollView, d62 d62Var, x00 x00Var, TextView textView) {
        this.a = constraintLayout;
        this.b = materialButton;
        this.c = imageView;
        this.d = imageView2;
        this.e = nestedScrollView;
        this.f = d62Var;
        this.k = x00Var;
        this.n = textView;
    }

    public static ub5 a(LayoutInflater layoutInflater) {
        View viewInflate = layoutInflater.inflate(R.layout.mega_signin_activity, (ViewGroup) null, false);
        int i = R.id.btn_connect_cloud;
        MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_connect_cloud);
        if (materialButton != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
            i = R.id.custom_action_bar;
            if (((ConstraintLayout) ms8.u(viewInflate, R.id.custom_action_bar)) != null) {
                i = R.id.iv_icon;
                ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.iv_icon);
                if (imageView != null) {
                    i = R.id.iv_menu;
                    ImageView imageView2 = (ImageView) ms8.u(viewInflate, R.id.iv_menu);
                    if (imageView2 != null) {
                        i = R.id.scroll_view;
                        NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate, R.id.scroll_view);
                        if (nestedScrollView != null) {
                            i = R.id.til_email;
                            View viewU = ms8.u(viewInflate, R.id.til_email);
                            if (viewU != null) {
                                TextInputEditText textInputEditText = (TextInputEditText) ms8.u(viewU, R.id.et);
                                if (textInputEditText == null) {
                                    f6.n("Missing required view with ID: ".concat(viewU.getResources().getResourceName(R.id.et)));
                                    return null;
                                }
                                TextInputLayout textInputLayout = (TextInputLayout) viewU;
                                d62 d62Var = new d62(textInputLayout, textInputEditText, textInputLayout, 1);
                                View viewU2 = ms8.u(viewInflate, R.id.til_password);
                                if (viewU2 != null) {
                                    TextInputEditText textInputEditText2 = (TextInputEditText) ms8.u(viewU2, R.id.et);
                                    if (textInputEditText2 == null) {
                                        f6.n("Missing required view with ID: ".concat(viewU2.getResources().getResourceName(R.id.et)));
                                        return null;
                                    }
                                    TextInputLayout textInputLayout2 = (TextInputLayout) viewU2;
                                    x00 x00Var = new x00(textInputLayout2, textInputEditText2, textInputLayout2, 2);
                                    i = R.id.tv_authentication_title;
                                    if (((TextView) ms8.u(viewInflate, R.id.tv_authentication_title)) != null) {
                                        i = R.id.tv_title;
                                        TextView textView = (TextView) ms8.u(viewInflate, R.id.tv_title);
                                        if (textView != null) {
                                            return new ub5(constraintLayout, materialButton, imageView, imageView2, nestedScrollView, d62Var, x00Var, textView);
                                        }
                                    }
                                } else {
                                    i = R.id.til_password;
                                }
                            }
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
