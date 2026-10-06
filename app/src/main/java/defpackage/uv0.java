package defpackage;

import android.view.View;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class uv0 implements jk8 {
    public final /* synthetic */ int a;
    public final MaterialCardView b;

    public /* synthetic */ uv0(MaterialCardView materialCardView, View view, TextView textView, TextView textView2, int i) {
        this.a = i;
        this.b = materialCardView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        int i = this.a;
        return this.b;
    }
}
