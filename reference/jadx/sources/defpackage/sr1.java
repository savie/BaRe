package defpackage;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sr1 extends ol1 {
    public final dd1 e;
    public final rm f;
    public final wv0 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sr1(Activity activity, dd1 dd1Var, rm rmVar) {
        super(11, false);
        dd1Var.getClass();
        this.e = dd1Var;
        this.f = rmVar;
        View viewInflate = View.inflate(activity, R.layout.connect_previous_cloud_dialog, null);
        int i = R.id.btn_cancel;
        MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_cancel);
        if (materialButton != null) {
            i = R.id.btn_connect;
            MaterialButton materialButton2 = (MaterialButton) ms8.u(viewInflate, R.id.btn_connect);
            if (materialButton2 != null) {
                i = R.id.iv_icon;
                ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.iv_icon);
                if (imageView != null) {
                    i = R.id.tv_title;
                    TextView textView = (TextView) ms8.u(viewInflate, R.id.tv_title);
                    if (textView != null) {
                        this.k = new wv0((LinearLayout) viewInflate, materialButton, materialButton2, imageView, textView);
                        return;
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        throw null;
    }

    @Override // defpackage.ol1
    public final jk8 i() {
        wv0 wv0Var = this.k;
        ImageView imageView = (ImageView) wv0Var.b;
        dd1 dd1Var = this.e;
        imageView.setImageResource(dd1Var.getBrandingIconRes());
        ((TextView) wv0Var.c).setText(dd1Var.getDisplayNameRes());
        ((MaterialButton) wv0Var.f).setOnClickListener(new h00(this, 3));
        ((MaterialButton) wv0Var.e).setOnClickListener(new i00(this, 6));
        return wv0Var;
    }
}
