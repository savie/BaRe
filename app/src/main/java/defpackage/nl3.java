package defpackage;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nl3 implements jk8 {
    public final MaterialCardView a;
    public final MaterialButton b;
    public final MaterialButton c;
    public final MaterialButton d;
    public final LinearLayout e;
    public final LinearLayout f;
    public final MaterialCardView k;
    public final FrameLayout n;
    public final LinearLayout p;
    public final TextView q;
    public final TextView r;
    public final TextView t;
    public final TextView x;

    public nl3(MaterialCardView materialCardView, MaterialButton materialButton, MaterialButton materialButton2, MaterialButton materialButton3, LinearLayout linearLayout, LinearLayout linearLayout2, MaterialCardView materialCardView2, FrameLayout frameLayout, LinearLayout linearLayout3, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.a = materialCardView;
        this.b = materialButton;
        this.c = materialButton2;
        this.d = materialButton3;
        this.e = linearLayout;
        this.f = linearLayout2;
        this.k = materialCardView2;
        this.n = frameLayout;
        this.p = linearLayout3;
        this.q = textView;
        this.r = textView2;
        this.t = textView3;
        this.x = textView4;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
