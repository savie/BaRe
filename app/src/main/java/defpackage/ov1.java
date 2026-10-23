package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ov1 implements jk8 {
    public final CoordinatorLayout a;
    public final ExtendedFloatingActionButton b;
    public final TextInputEditText c;
    public final TextInputEditText d;
    public final TextInputEditText e;
    public final NestedScrollView f;
    public final TextInputLayout k;
    public final TextView n;
    public final TextView p;

    public ov1(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, TextInputEditText textInputEditText, TextInputEditText textInputEditText2, TextInputEditText textInputEditText3, NestedScrollView nestedScrollView, TextInputLayout textInputLayout, TextView textView, TextView textView2) {
        this.a = coordinatorLayout;
        this.b = extendedFloatingActionButton;
        this.c = textInputEditText;
        this.d = textInputEditText2;
        this.e = textInputEditText3;
        this.f = nestedScrollView;
        this.k = textInputLayout;
        this.n = textView;
        this.p = textView2;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
