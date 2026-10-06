package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.google.android.material.textfield.TextInputEditText;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class m00 implements jk8 {
    public final CoordinatorLayout a;
    public final w00 b;
    public final MaterialButton c;
    public final MaterialButton d;
    public final MaterialButton e;
    public final TextInputEditText f;
    public final CircularProgressIndicator k;
    public final RecyclerView n;
    public final NestedScrollView p;
    public final MaterialCardView q;
    public final TextView r;
    public final TextView t;
    public final TextView x;

    public m00(CoordinatorLayout coordinatorLayout, w00 w00Var, MaterialButton materialButton, MaterialButton materialButton2, MaterialButton materialButton3, TextInputEditText textInputEditText, CircularProgressIndicator circularProgressIndicator, RecyclerView recyclerView, NestedScrollView nestedScrollView, MaterialCardView materialCardView, TextView textView, TextView textView2, TextView textView3) {
        this.a = coordinatorLayout;
        this.b = w00Var;
        this.c = materialButton;
        this.d = materialButton2;
        this.e = materialButton3;
        this.f = textInputEditText;
        this.k = circularProgressIndicator;
        this.n = recyclerView;
        this.p = nestedScrollView;
        this.q = materialCardView;
        this.r = textView;
        this.t = textView2;
        this.x = textView3;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
