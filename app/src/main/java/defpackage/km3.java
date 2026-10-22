package defpackage;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class km3 implements jk8 {
    public final CoordinatorLayout a;
    public final w00 b;
    public final MaterialButton c;
    public final MaterialButton d;
    public final TextInputEditText e;
    public final TextInputEditText f;
    public final TextInputLayout k;
    public final TextInputLayout n;
    public final View p;

    public km3(CoordinatorLayout coordinatorLayout, w00 w00Var, MaterialButton materialButton, MaterialButton materialButton2, TextInputEditText textInputEditText, TextInputEditText textInputEditText2, TextInputLayout textInputLayout, TextInputLayout textInputLayout2, View view) {
        this.a = coordinatorLayout;
        this.b = w00Var;
        this.c = materialButton;
        this.d = materialButton2;
        this.e = textInputEditText;
        this.f = textInputEditText2;
        this.k = textInputLayout;
        this.n = textInputLayout2;
        this.p = view;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
