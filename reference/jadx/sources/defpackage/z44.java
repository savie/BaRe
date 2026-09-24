package defpackage;

import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class z44 implements jk8 {
    public final FrameLayout G;
    public final LinearLayout H;
    public final NestedScrollView I;
    public final MaterialToolbar J;
    public final MaterialCardView K;
    public final TextView L;
    public final TextView M;
    public final TextView N;
    public final TextView O;
    public final ConstraintLayout a;
    public final MaterialCardView b;
    public final ImageButton c;
    public final TextView d;
    public final MaterialButton e;
    public final EditText f;
    public final MaterialCardView k;
    public final zx2 n;
    public final MaterialCardView p;
    public final QuickRecyclerView q;
    public final QuickRecyclerView r;
    public final QuickRecyclerView t;
    public final RecyclerView x;
    public final QuickRecyclerView y;

    public z44(ConstraintLayout constraintLayout, MaterialCardView materialCardView, ImageButton imageButton, TextView textView, MaterialButton materialButton, EditText editText, MaterialCardView materialCardView2, zx2 zx2Var, MaterialCardView materialCardView3, QuickRecyclerView quickRecyclerView, QuickRecyclerView quickRecyclerView2, QuickRecyclerView quickRecyclerView3, RecyclerView recyclerView, QuickRecyclerView quickRecyclerView4, FrameLayout frameLayout, LinearLayout linearLayout, NestedScrollView nestedScrollView, MaterialToolbar materialToolbar, MaterialCardView materialCardView4, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.a = constraintLayout;
        this.b = materialCardView;
        this.c = imageButton;
        this.d = textView;
        this.e = materialButton;
        this.f = editText;
        this.k = materialCardView2;
        this.n = zx2Var;
        this.p = materialCardView3;
        this.q = quickRecyclerView;
        this.r = quickRecyclerView2;
        this.t = quickRecyclerView3;
        this.x = recyclerView;
        this.y = quickRecyclerView4;
        this.G = frameLayout;
        this.H = linearLayout;
        this.I = nestedScrollView;
        this.J = materialToolbar;
        this.K = materialCardView4;
        this.L = textView2;
        this.M = textView3;
        this.N = textView4;
        this.O = textView5;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
