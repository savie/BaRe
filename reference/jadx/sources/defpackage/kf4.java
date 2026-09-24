package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kf4 implements jk8 {
    public final LinearLayoutCompat a;
    public final TextView b;

    public kf4(LinearLayoutCompat linearLayoutCompat, TextView textView) {
        this.a = linearLayoutCompat;
        this.b = textView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
