package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.CircularProgressIndicator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yf implements jk8 {
    public final ImageView G;
    public final CircularProgressIndicator H;
    public final TextView I;
    public final TextView J;
    public final TextView K;
    public final TextView L;
    public final TextView M;
    public final TextView N;
    public final TextView O;
    public final LinearLayout a;
    public final ConstraintLayout b;
    public final ConstraintLayout c;
    public final MaterialButton d;
    public final MaterialButton e;
    public final MaterialButton f;
    public final MaterialButton k;
    public final MaterialCardView n;
    public final LinearLayout p;
    public final LinearLayout q;
    public final LinearLayout r;
    public final ImageView t;
    public final ImageView x;
    public final ImageView y;

    public yf(LinearLayout linearLayout, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, MaterialButton materialButton, MaterialButton materialButton2, MaterialButton materialButton3, MaterialButton materialButton4, MaterialCardView materialCardView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, CircularProgressIndicator circularProgressIndicator, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.a = linearLayout;
        this.b = constraintLayout;
        this.c = constraintLayout2;
        this.d = materialButton;
        this.e = materialButton2;
        this.f = materialButton3;
        this.k = materialButton4;
        this.n = materialCardView;
        this.p = linearLayout2;
        this.q = linearLayout3;
        this.r = linearLayout4;
        this.t = imageView;
        this.x = imageView2;
        this.y = imageView3;
        this.G = imageView4;
        this.H = circularProgressIndicator;
        this.I = textView;
        this.J = textView2;
        this.K = textView3;
        this.L = textView4;
        this.M = textView5;
        this.N = textView6;
        this.O = textView7;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
