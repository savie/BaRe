package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zx2 implements jk8 {
    public final LinearLayout a;
    public final MaterialButton b;
    public final MaterialButton c;
    public final ImageView d;
    public final TextView e;

    public zx2(LinearLayout linearLayout, MaterialButton materialButton, MaterialButton materialButton2, ImageView imageView, TextView textView) {
        this.a = linearLayout;
        this.b = materialButton;
        this.c = materialButton2;
        this.d = imageView;
        this.e = textView;
    }

    public static zx2 a(View view) {
        int i = R.id.el_btn;
        MaterialButton materialButton = (MaterialButton) ms8.u(view, R.id.el_btn);
        if (materialButton != null) {
            i = R.id.el_btn_secondary;
            MaterialButton materialButton2 = (MaterialButton) ms8.u(view, R.id.el_btn_secondary);
            if (materialButton2 != null) {
                i = R.id.el_iv;
                ImageView imageView = (ImageView) ms8.u(view, R.id.el_iv);
                if (imageView != null) {
                    i = R.id.el_tv;
                    TextView textView = (TextView) ms8.u(view, R.id.el_tv);
                    if (textView != null) {
                        return new zx2((LinearLayout) view, materialButton, materialButton2, imageView, textView);
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
