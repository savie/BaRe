package defpackage;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kq1 implements jk8 {
    public final CoordinatorLayout a;
    public final w00 b;
    public final ExtendedFloatingActionButton c;
    public final MaterialButton d;
    public final l39 e;
    public final TextInputEditText f;
    public final RecyclerView k;
    public final TextInputLayout n;

    public kq1(CoordinatorLayout coordinatorLayout, w00 w00Var, ExtendedFloatingActionButton extendedFloatingActionButton, MaterialButton materialButton, l39 l39Var, TextInputEditText textInputEditText, RecyclerView recyclerView, TextInputLayout textInputLayout) {
        this.a = coordinatorLayout;
        this.b = w00Var;
        this.c = extendedFloatingActionButton;
        this.d = materialButton;
        this.e = l39Var;
        this.f = textInputEditText;
        this.k = recyclerView;
        this.n = textInputLayout;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
