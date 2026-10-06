package defpackage;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class c56 implements jk8 {
    public final CoordinatorLayout a;
    public final MaterialButton b;
    public final d56 c;
    public final LinearLayout d;
    public final ConstraintLayout e;
    public final FrameLayout f;
    public final CircularProgressIndicator k;
    public final RecyclerView n;
    public final RecyclerView p;
    public final ix0 q;
    public final TextView r;
    public final TextView t;

    public c56(CoordinatorLayout coordinatorLayout, MaterialButton materialButton, d56 d56Var, LinearLayout linearLayout, ConstraintLayout constraintLayout, FrameLayout frameLayout, CircularProgressIndicator circularProgressIndicator, RecyclerView recyclerView, RecyclerView recyclerView2, ix0 ix0Var, TextView textView, TextView textView2) {
        this.a = coordinatorLayout;
        this.b = materialButton;
        this.c = d56Var;
        this.d = linearLayout;
        this.e = constraintLayout;
        this.f = frameLayout;
        this.k = circularProgressIndicator;
        this.n = recyclerView;
        this.p = recyclerView2;
        this.q = ix0Var;
        this.r = textView;
        this.t = textView2;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
