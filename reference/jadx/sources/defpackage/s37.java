package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class s37 implements jk8 {
    public final CoordinatorLayout a;
    public final w00 b;
    public final MaterialButton c;
    public final ConstraintLayout d;
    public final ConstraintLayout e;
    public final ImageView f;
    public final RecyclerView k;
    public final RecyclerView n;
    public final RecyclerView p;
    public final RecyclerView q;
    public final NestedScrollView r;
    public final TextView t;

    public s37(CoordinatorLayout coordinatorLayout, w00 w00Var, MaterialButton materialButton, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ImageView imageView, RecyclerView recyclerView, RecyclerView recyclerView2, RecyclerView recyclerView3, RecyclerView recyclerView4, NestedScrollView nestedScrollView, TextView textView) {
        this.a = coordinatorLayout;
        this.b = w00Var;
        this.c = materialButton;
        this.d = constraintLayout;
        this.e = constraintLayout2;
        this.f = imageView;
        this.k = recyclerView;
        this.n = recyclerView2;
        this.p = recyclerView3;
        this.q = recyclerView4;
        this.r = nestedScrollView;
        this.t = textView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
