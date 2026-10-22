package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ey2 implements jk8 {
    public final NestedScrollView a;
    public final MaterialButton b;
    public final MaterialButton c;
    public final ImageView d;
    public final TextView e;
    public final TextView f;

    public ey2(NestedScrollView nestedScrollView, MaterialButton materialButton, MaterialButton materialButton2, ImageView imageView, TextView textView, TextView textView2) {
        this.a = nestedScrollView;
        this.b = materialButton;
        this.c = materialButton2;
        this.d = imageView;
        this.e = textView;
        this.f = textView2;
    }

    public static ey2 a(View view) {
        int i = R.id.btn_error;
        MaterialButton materialButton = (MaterialButton) ms8.u(view, R.id.btn_error);
        if (materialButton != null) {
            i = R.id.btn_error2;
            MaterialButton materialButton2 = (MaterialButton) ms8.u(view, R.id.btn_error2);
            if (materialButton2 != null) {
                NestedScrollView nestedScrollView = (NestedScrollView) view;
                i = R.id.iv_error_image;
                ImageView imageView = (ImageView) ms8.u(view, R.id.iv_error_image);
                if (imageView != null) {
                    i = R.id.tv_error_subtitle;
                    TextView textView = (TextView) ms8.u(view, R.id.tv_error_subtitle);
                    if (textView != null) {
                        i = R.id.tv_error_title;
                        TextView textView2 = (TextView) ms8.u(view, R.id.tv_error_title);
                        if (textView2 != null) {
                            return new ey2(nestedScrollView, materialButton, materialButton2, imageView, textView, textView2);
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
