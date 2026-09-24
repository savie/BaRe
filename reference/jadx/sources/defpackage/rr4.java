package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rr4 implements jk8 {
    public final TextView G;
    public final TextView H;
    public final TextView I;
    public final TextView J;
    public final CoordinatorLayout a;
    public final w00 b;
    public final ExtendedFloatingActionButton c;
    public final MaterialCardView d;
    public final MaterialCardView e;
    public final zx2 f;
    public final ImageView k;
    public final ImageView n;
    public final ImageView p;
    public final ConstraintLayout q;
    public final CircularProgressIndicator r;
    public final QuickRecyclerView t;
    public final RecyclerView x;
    public final RecyclerView y;

    public rr4(CoordinatorLayout coordinatorLayout, w00 w00Var, ExtendedFloatingActionButton extendedFloatingActionButton, MaterialCardView materialCardView, MaterialCardView materialCardView2, zx2 zx2Var, ImageView imageView, ImageView imageView2, ImageView imageView3, ConstraintLayout constraintLayout, CircularProgressIndicator circularProgressIndicator, QuickRecyclerView quickRecyclerView, RecyclerView recyclerView, RecyclerView recyclerView2, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.a = coordinatorLayout;
        this.b = w00Var;
        this.c = extendedFloatingActionButton;
        this.d = materialCardView;
        this.e = materialCardView2;
        this.f = zx2Var;
        this.k = imageView;
        this.n = imageView2;
        this.p = imageView3;
        this.q = constraintLayout;
        this.r = circularProgressIndicator;
        this.t = quickRecyclerView;
        this.x = recyclerView;
        this.y = recyclerView2;
        this.G = textView;
        this.H = textView2;
        this.I = textView3;
        this.J = textView4;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
