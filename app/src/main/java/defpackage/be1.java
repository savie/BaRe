package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class be1 implements jk8 {
    public final RecyclerView G;
    public final NestedScrollView H;
    public final ConstraintLayout I;
    public final NestedScrollView J;
    public final TextView K;
    public final TextView L;
    public final TextView M;
    public final TextView N;
    public final TextView O;
    public final TextView P;
    public final TextView Q;
    public final TextView R;
    public final TextView S;
    public final TextView T;
    public final CoordinatorLayout a;
    public final LinearLayout b;
    public final w00 c;
    public final MaterialButton d;
    public final MaterialButton e;
    public final ExtendedFloatingActionButton f;
    public final MaterialButton k;
    public final MaterialButton n;
    public final MaterialButton p;
    public final MaterialButton q;
    public final View r;
    public final ImageView t;
    public final ImageView x;
    public final CircularProgressIndicator y;

    public be1(CoordinatorLayout coordinatorLayout, LinearLayout linearLayout, w00 w00Var, MaterialButton materialButton, MaterialButton materialButton2, ExtendedFloatingActionButton extendedFloatingActionButton, MaterialButton materialButton3, MaterialButton materialButton4, MaterialButton materialButton5, MaterialButton materialButton6, View view, ImageView imageView, ImageView imageView2, CircularProgressIndicator circularProgressIndicator, RecyclerView recyclerView, NestedScrollView nestedScrollView, ConstraintLayout constraintLayout, NestedScrollView nestedScrollView2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10) {
        this.a = coordinatorLayout;
        this.b = linearLayout;
        this.c = w00Var;
        this.d = materialButton;
        this.e = materialButton2;
        this.f = extendedFloatingActionButton;
        this.k = materialButton3;
        this.n = materialButton4;
        this.p = materialButton5;
        this.q = materialButton6;
        this.r = view;
        this.t = imageView;
        this.x = imageView2;
        this.y = circularProgressIndicator;
        this.G = recyclerView;
        this.H = nestedScrollView;
        this.I = constraintLayout;
        this.J = nestedScrollView2;
        this.K = textView;
        this.L = textView2;
        this.M = textView3;
        this.N = textView4;
        this.O = textView5;
        this.P = textView6;
        this.Q = textView7;
        this.R = textView8;
        this.S = textView9;
        this.T = textView10;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
