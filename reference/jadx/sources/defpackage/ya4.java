package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ya4 implements jk8 {
    public final /* synthetic */ int a = 1;
    public final MaterialCardView b;
    public final MaterialCardView c;
    public final TextView d;
    public final TextView e;
    public final TextView f;
    public final View k;
    public final TextView n;

    public ya4(MaterialCardView materialCardView, ImageView imageView, MaterialButton materialButton, MaterialCardView materialCardView2, TextView textView, TextView textView2, TextView textView3) {
        this.b = materialCardView;
        this.k = imageView;
        this.n = materialButton;
        this.c = materialCardView2;
        this.d = textView;
        this.e = textView2;
        this.f = textView3;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        int i = this.a;
        return this.b;
    }

    public ya4(MaterialCardView materialCardView, MaterialCardView materialCardView2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.b = materialCardView;
        this.c = materialCardView2;
        this.d = textView;
        this.e = textView2;
        this.f = textView3;
        this.k = textView4;
        this.n = textView5;
    }
}
