package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class uh7 implements jk8 {
    public final LinearLayout a;
    public final LinearLayout b;
    public final TextView c;

    public uh7(LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, TextView textView) {
        this.a = linearLayout;
        this.b = linearLayout2;
        this.c = textView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
