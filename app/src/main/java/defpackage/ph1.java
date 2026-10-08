package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ph1 implements jk8 {
    public final TextView G;
    public final TextView H;
    public final TextView I;
    public final TextView J;
    public final CoordinatorLayout a;
    public final LinearLayout b;
    public final w00 c;
    public final MaterialButton d;
    public final MaterialButton e;
    public final MaterialButton f;
    public final MaterialButton k;
    public final ImageView n;
    public final ImageView p;
    public final CircularProgressIndicator q;
    public final RecyclerView r;
    public final ConstraintLayout t;
    public final TextView x;
    public final TextView y;

    public ph1(CoordinatorLayout coordinatorLayout, LinearLayout linearLayout, w00 w00Var, MaterialButton materialButton, MaterialButton materialButton2, MaterialButton materialButton3, MaterialButton materialButton4, ImageView imageView, ImageView imageView2, CircularProgressIndicator circularProgressIndicator, RecyclerView recyclerView, ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.a = coordinatorLayout;
        this.b = linearLayout;
        this.c = w00Var;
        this.d = materialButton;
        this.e = materialButton2;
        this.f = materialButton3;
        this.k = materialButton4;
        this.n = imageView;
        this.p = imageView2;
        this.q = circularProgressIndicator;
        this.r = recyclerView;
        this.t = constraintLayout;
        this.x = textView;
        this.y = textView2;
        this.G = textView3;
        this.H = textView4;
        this.I = textView5;
        this.J = textView6;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
