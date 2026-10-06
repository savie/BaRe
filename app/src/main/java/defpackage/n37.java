package defpackage;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class n37 implements jk8 {
    public final FrameLayout a;
    public final MaterialButton b;
    public final MaterialCardView c;
    public final ey2 d;
    public final ix0 e;
    public final QuickRecyclerView f;
    public final i75 k;
    public final NestedScrollView n;
    public final w00 p;
    public final TextView q;

    public n37(FrameLayout frameLayout, MaterialButton materialButton, MaterialCardView materialCardView, ey2 ey2Var, ix0 ix0Var, QuickRecyclerView quickRecyclerView, i75 i75Var, NestedScrollView nestedScrollView, w00 w00Var, TextView textView) {
        this.a = frameLayout;
        this.b = materialButton;
        this.c = materialCardView;
        this.d = ey2Var;
        this.e = ix0Var;
        this.f = quickRecyclerView;
        this.k = i75Var;
        this.n = nestedScrollView;
        this.p = w00Var;
        this.q = textView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
