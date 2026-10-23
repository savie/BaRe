package defpackage;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ur8 implements jk8 {
    public final CoordinatorLayout a;
    public final w00 b;
    public final MaterialButton c;
    public final NestedScrollView d;
    public final MaterialCardView e;
    public final yr8 f;
    public final yr8 k;
    public final yr8 n;

    public ur8(CoordinatorLayout coordinatorLayout, w00 w00Var, MaterialButton materialButton, NestedScrollView nestedScrollView, MaterialCardView materialCardView, yr8 yr8Var, yr8 yr8Var2, yr8 yr8Var3) {
        this.a = coordinatorLayout;
        this.b = w00Var;
        this.c = materialButton;
        this.d = nestedScrollView;
        this.e = materialCardView;
        this.f = yr8Var;
        this.k = yr8Var2;
        this.n = yr8Var3;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
