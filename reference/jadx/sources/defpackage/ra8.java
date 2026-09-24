package defpackage;

import android.view.View;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ra8 implements jk8 {
    public final MaterialCardView a;
    public final TextView b;
    public final TextView c;
    public final TextView d;

    public ra8(MaterialCardView materialCardView, TextView textView, TextView textView2, TextView textView3) {
        this.a = materialCardView;
        this.b = textView;
        this.c = textView2;
        this.d = textView3;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
