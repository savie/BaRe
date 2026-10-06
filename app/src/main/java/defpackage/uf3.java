package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class uf3 implements jk8 {
    public final MaterialCardView a;
    public final TextView b;

    public uf3(MaterialCardView materialCardView, TextView textView) {
        this.a = materialCardView;
        this.b = textView;
    }

    public static uf3 a(View view) {
        int i = R.id.iv_expand;
        if (((ImageView) ms8.u(view, R.id.iv_expand)) != null) {
            i = R.id.tv_backend_error_subtitle;
            TextView textView = (TextView) ms8.u(view, R.id.tv_backend_error_subtitle);
            if (textView != null) {
                i = R.id.tv_backend_error_title;
                if (((TextView) ms8.u(view, R.id.tv_backend_error_title)) != null) {
                    return new uf3((MaterialCardView) view, textView);
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
