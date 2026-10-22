package defpackage;

import android.view.View;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ur implements jk8 {
    public final MaterialCardView a;
    public final TextView b;

    public ur(MaterialCardView materialCardView, TextView textView) {
        this.a = materialCardView;
        this.b = textView;
    }

    public static ur a(View view) {
        MaterialCardView materialCardView = (MaterialCardView) view;
        TextView textView = (TextView) ms8.u(view, R.id.tv_title);
        if (textView != null) {
            return new ur(materialCardView, textView);
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tv_title)));
        return null;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
