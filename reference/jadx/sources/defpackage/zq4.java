package defpackage;

import android.view.View;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zq4 implements jk8 {
    public final MaterialCardView a;
    public final TextView b;
    public final TextView c;

    public zq4(MaterialCardView materialCardView, TextView textView, TextView textView2) {
        this.a = materialCardView;
        this.b = textView;
        this.c = textView2;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
