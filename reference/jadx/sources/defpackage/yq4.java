package defpackage;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yq4 implements jk8 {
    public final CoordinatorLayout a;
    public final w00 b;
    public final MaterialButton c;
    public final MaterialButton d;
    public final TextInputEditText e;
    public final zq4 f;
    public final vq k;
    public final ur n;
    public final TextInputLayout p;

    public yq4(CoordinatorLayout coordinatorLayout, w00 w00Var, MaterialButton materialButton, MaterialButton materialButton2, TextInputEditText textInputEditText, zq4 zq4Var, vq vqVar, ur urVar, TextInputLayout textInputLayout) {
        this.a = coordinatorLayout;
        this.b = w00Var;
        this.c = materialButton;
        this.d = materialButton2;
        this.e = textInputEditText;
        this.f = zq4Var;
        this.k = vqVar;
        this.n = urVar;
        this.p = textInputLayout;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
