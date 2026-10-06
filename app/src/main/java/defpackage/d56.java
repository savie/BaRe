package defpackage;

import android.view.View;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class d56 implements jk8 {
    public final MaterialCardView a;
    public final TextView b;

    public d56(MaterialCardView materialCardView, TextView textView) {
        this.a = materialCardView;
        this.b = textView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
